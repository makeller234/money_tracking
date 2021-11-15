"""CRUD Operations"""
from model import db, User, Monies, connect_to_db
from sqlalchemy import extract
from collections import Counter #counter takes in a list and returns a dictionary where the key is the count of an item and the value is the item
import calendar
from datetime import date, datetime


def create_user(email, fname, lname, password):
    """Creates and returns a new user"""

    user = User(email = email, fname = fname, lname = lname, password = password)

    db.session.add(user)
    db.session.commit()

    return user

def get_user_by_email(email):
    """Returns a user given their email.  
    Since email is the id, .get was used in the query"""

    return User.query.get(email)

def create_money_entry(email, date, amount, address, city, state, zip, locname, missed, money_year, money_type):
    """Adds the money entry to the database for that user"""

    money = Monies(email=email, date=date, amount=amount, address=address, city=city, state=state, zip=zip,
                    locname=locname, missed=missed, money_year=money_year, money_type=money_type)

    db.session.add(money)
    db.session.commit()

    return money

def user_query(user_email):
    """Queries the Monies table to get all the information from the user assocaited with user_email"""

    return Monies.query.filter_by(email=user_email).all()
    
def user_query_filters(user_email, year, missed):
    """Queries the Monies table to get all the information from the user associated with user_email and filters on year and missed status"""
    miss = True
    if missed == 'found':
        miss = False

    if year == 'All' and missed == 'both':
        all_user_results = Monies.query.filter_by(email = user_email).all()
    elif year == 'All' and miss ==True:
        all_user_results = Monies.query.filter_by(email = user_email, missed=True).all()
    elif year == 'All' and miss == False:
        all_user_results = Monies.query.filter_by(email = user_email, missed=False).all()
    elif year !='All' and missed == 'both':  
        all_user_results = Monies.query.filter_by(email = user_email).filter(extract('year', Monies.date)==year).all()
    elif year !='All' and miss==True:    
        all_user_results = Monies.query.filter_by(email = user_email, missed=True).filter(extract('year', Monies.date)==year).all()
    elif year != 'All' and miss ==False:
        all_user_results = Monies.query.filter_by(email = user_email, missed=False).filter(extract('year', Monies.date)==year).all()

    return all_user_results

def total_money(user_email, year): 
    """takes in 2 parameters, email and year, and returns the total money found and missed for that user in that year"""

    if year == 'All':
        all_user_results = Monies.query.filter_by(email = user_email).all()
    else:
        all_user_results = Monies.query.filter_by(email = user_email).filter(extract('year', Monies.date)==year).all()
 
    total_found = 0
    total_missed = 0
    for elem in all_user_results:
        if elem.missed == False:
            total_found += elem.amount
        elif elem.missed == True:
            total_missed += elem.amount

    return {'Total_Found': total_found, "Total_Missed": total_missed}

def daily_average(user_email, year, missed):
    """Takes in 3 parameters, email, year and if the money was missed, found or both.
    Returns an average based on the year and missed status"""

    all_user_results = user_query_filters(user_email, year, missed)
    # all_user_results is a list of query objects

    total = 0
    unique_days = []
    #loops over the user results and totals the amounts
    for elem in all_user_results:
        total += elem.amount

        # adds the date to the unique_days list (if it's not already in it) so that it can be used to calculate
        # total days to compute the average
        if elem.date not in unique_days:
            unique_days.append(elem.date)

    # calculates how many days. Need +1 b/c ex: 11/4-11/1 = 3 in timedelta, but it's actually 4 days
    if year == 'All':
        days_for_avg = (date.today()-min(unique_days)).days+1
    else:
        days_for_avg = (datetime(year,12,31)-datetime(year,1,1)).days+1


    return round((total / days_for_avg), 3)

def most_freq_money_and_year(user_email, year, missed):
    """Takes in 3 parameters, email, year and if the money was missed, found or both.
    Returns a dictionary of the most frequent occurance for money year and money type based on the year and missed status"""

    all_user_results = user_query_filters(user_email, year, missed)

    money_years = []
    money_type = []
    
    #loops over the query results and adds each money year and money type to their corresponding lists
    for elem in all_user_results:
        money_years.append(elem.money_year)
        money_type.append(elem.money_type)

    # Counter creates a dictionary where the key is the count and the value is the year or type
    money_year_counter = Counter(money_years)
    money_type_counter = Counter(money_type)
    
    #creates a list of tuples, where each tuple consists of the key and value from the money_year_counter dictionary
    max_year_found = [(v,k) for k,v in money_year_counter.items()]

    #loops through the list and removes the tuple if the 2nd value in the tuple is None.
    for item in max_year_found:
        if item[1] == None:
            max_year_found.remove(item)

    #does same as above by for the money_type_counter dictionary
    max_type_found = [(v,k) for k,v in money_type_counter.items()]
    for item in max_type_found:
        if item[1] == None:
            max_type_found.remove(item)

    # because there are some places where this information is missing
    # these conditions make the value 'N/A' if it doesn't exist, otherwise, it finds the max 
    if len(max_year_found) == 0:
        max_yr_count,  max_money_yr = 'N/A','N/A'
    if len(max_type_found) == 0:
        max_type_cnt, max_money_type = 'N/A','N/A'
    if len(max_year_found) != 0:
        max_yr_count,  max_money_yr  = max(max_year_found)[0], max(max_year_found)[1]
    if len(max_type_found) !=0:
        max_type_cnt, max_money_type = max(max_type_found)[0], max(max_type_found)[1]

    return {'year_count': max_yr_count, 'money_year': max_money_yr,
            'type_count': max_type_cnt, 'money_type': max_money_type}


def most_freq_dow(user_email,year, missed):
    """Takes in 3 parameters, email, year and if the money was missed, found or both.
    Returns the most frequent day of the week based on the year and missed status"""

    all_user_results = user_query_filters(user_email, year, missed)

    dates = []
    #loops through user query results and adds each weekday number (0 = Monday, 6 = Sunday) to the dates list
    for item in all_user_results:
        dates.append(item.date.weekday())

    #turn the dates list into a dictionary where the key is the count frequency and the value is the day of the week
    dow_counter = Counter(dates)

    #create a list of tuples that hold the count and the day of the week
    max_dow = [(v,k) for k,v in dow_counter.items()]

    #this condition needed for if there's a time when there are no days that meet the criteria and the length would be 0.
    if len(max_dow) == 0:
        return 'N/A'
    else:
        # loops through a list of the calendar day names and if the index of the day name is the same as the max from the tuples list
        # that value is returned
        for idx, val in enumerate(list(calendar.day_name)):
            if idx == max(max_dow)[1]:
                return val
        #         dow = val

        # return dow
    
def daily_coin_amounts(user_email):
    """takes in the user email and returns a dictionary with the years as keys and the values as a dictionary which 
    contains the money found or missed on those specific days of the week"""

    all_user_results = user_query(user_email)
    

    dict_by_year_dow = {}
    #create the first dictionary with the year as the key and the value as 0 as a placeholder.
    for result in all_user_results:
        dict_by_year_dow[result.date.year] = dict_by_year_dow.get(result.date.year, 0)
    
    # create a dictionary that will hold the missed and found information by day
    # 0=Monday, 6=Sunday
    totals_by_day = {0:{'missed':{}, 'found':{}}, 1:{'missed':{}, 'found':{}}, 2:{'missed':{}, 'found':{}}, 
                    3:{'missed':{}, 'found':{}}, 4:{'missed':{}, 'found':{}}, 5:{'missed':{}, 'found':{}}, 6:{'missed':{}, 'found':{}}}

    #loop through each key/year, and then all the query results.  If the item from the query result matches the key and the missed boolean, the moeny type from that item is added
    # to the totals_by_day dict and the amount is incremented
    for key in dict_by_year_dow.keys():

        for item in all_user_results:
                    
            if key == item.date.year and item.missed == True:

                totals_by_day[item.date.weekday()]['missed'][item.money_type] = totals_by_day[item.date.weekday()]['missed'].get(item.money_type, 0) + float(item.amount)
  
            elif key == item.date.year and item.missed == False:
                
                totals_by_day[item.date.weekday()]['found'][item.money_type] = totals_by_day[item.date.weekday()]['found'].get(item.money_type, 0) + float(item.amount)

        # the totals_by_day dict is set as the value to the correspinding year key of the dict_by_year
        dict_by_year_dow[key] = totals_by_day

        #totals by day is reset so that it will be clean for the next time through the loop of years.
        totals_by_day = {0:{'missed':{}, 'found':{}}, 1:{'missed':{}, 'found':{}}, 2:{'missed':{}, 'found':{}}, 
                        3:{'missed':{}, 'found':{}}, 4:{'missed':{}, 'found':{}}, 5:{'missed':{}, 'found':{}}, 6:{'missed':{}, 'found':{}}}
        

    return dict_by_year_dow

def all_addresses(user_email):
    """Returns a dictionary with an arbitrary key and has the value of another dictionary with information needed to populate the maps graph"""

    all_user_results = user_query(user_email)
    
    addresses = {}
    i = 0
    for address in all_user_results:
        addresses[i] = {'loc':address.locname,'addr':address.address, 'city':address.city,
                        'state':address.state, 'zip':address.zip, 'id':address.id, 'year':address.date.year,
                        'amount':address.amount, 'missed': address.missed}
        i+=1

    return addresses

def coin_polar(user_email):
    """Takes in a users email and returns a dictionary that has a count of the coin types"""
    all_user_coins = user_query(user_email)

    coin_list = []
    for item in all_user_coins:
        coin_list.append(item.money_type)
    coin_counts = Counter(coin_list)

    return coin_counts

def years_list(user_email):
    """returns a unique list of all the years in the database, given a specific user"""

    all_user_results = user_query(user_email)

    years_list = []
    for result in all_user_results:
        if result.date.year not in years_list:
            years_list.append(result.date.year)
    
    return years_list


if __name__ == "__main__":
    from server import app
    connect_to_db(app)