# My Two Cents

Every time I see money on the ground, I pick it up.  For awhile I had a separate change jar that I would keep this found money in, until
I decided there's a better way to track it. So I started a spreadsheet that held all the information about the money I found and it's location.
For this project, I wanted to make a better way of logging the money and create a dashboard that showed a map of the locations where the money was found as well
as some stats.  

Watch the demo:

[![Watch the demo](https://img.youtube.com/vi/0h8zBtb5Dms/0.jpg)](https://www.youtube.com/watch?v=0h8zBtb5Dms)



## Tech Stack
- Backend: Python, Flask, PostgreSQL, SQLAlchemy
- Frontend: JavaScript, jQuery, AJAX, Jinja2, Bootstrap, HTML, CSS, Chart.js
- APIs: Google Places, Google Geocoding, Google Maps JavaScript

## Features
- Once the user is logged in, they are directed to the page where they can enter the information on the money they found.  The map on this page 
shows the location of the last money they logged.  Clicking on the marker shows the name of the location and the amount of money.
- The dashboard shows the user their total money logged and breaks it into found and missed. Missed money is when the user saw it, but was unable
to grab the money.  There are some basic stats for the average, most frequent coin/bill year, most frequent money type, and most frequent day of the week.
The stacked bar graph shows the frequency of each money type found per day.  The map shows the location of where the money was found, with a pop-up that displays the location
name and amount of money logged for that location.  The dashboard can be filtered by year and by missed, found or both.
- The user has the ability to update an entry.  They can change all of the information about an entry, or just one piece of information.  If it was logged in error, the entire entry can be deleted.


## Set up/Installation
- Install [PostgreSQL](https://www.postgresql.org/download/)
- Install [Python](https://www.python.org/downloads/)
- Fork the Repo
    ```
    https://github.com/makeller234/my_two_cents.git
    ```

- Create and Activate a Virtual Environment

    ```
    virtualenv env

    source env/bin/activate
    ```

- Install the dependencies
    ```
    pip3 install -r requirements.txt
    ```

- Sign up for the [Google APIs](https://developers.google.com/maps): Places, Geocoding, Maps JavaScript

- Create a 'secrets.sh' file and add your API key as ```export API_KEY="api_key_here"```
- Also, add your API key to the 2 get requests for the Google Maps url, in the map.js file

- Source your key into the virtual environment. You will have to source the secrets.sh file every time you open a new terminal. In terminal, in your virtual environment, run this command
```
source secrets.sh
```

- Set up the database
```
createdb money
psql money < money.sql
```

- Run the app
```
python3 server.py
```

- Go to 'localhost:5000/' in your browser. You can create an account and add some data, or you can log in as a test user.  Email: marla@email.com, password: Logcoins1!


## About Me
Melissa Keller is software engineer in the Twin Cities Metro area.  To see more about her career journey, find her on [LinkedIn](https://www.linkedin.com/in/makeller234).
