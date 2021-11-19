'use strict';

const labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];


// //Polar Area
// $.get('/coin_counts.json', res=>{
//   // const year = $('#year').html();

//   // console.log(res.data);
  

//   const data_array = [];
//   const backg_color = []
//   for (const item in res.data){
//     data_array.push(res.data[item]);

//     backg_color.push(`rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`)
//   }
//   const data = {
//     labels: Object.keys(res.data),
//     datasets: [{
//       label: 'Money Quantities',
//       data: data_array,
//       backgroundColor: backg_color
//     }]
    
//   };
//   new Chart($('#polar'), {
//     type: 'polarArea',
//     data: data,
//     options: {}
//   });

// })
// //end polar area graph.

function createGraphLabels(resData, year, status){
  //returns an array of the labels (unique money types).  Array is filtered based on the year and status.
  let dataObjLabelsBoth = [];
  let dataObjLabelsMissed = [];
  let dataObjLabelsFound = [];

  if(year !== 'All'){
    for (const jsonYear in resData){
      if (jsonYear === year){
        for (const dayStatusCounts in resData[jsonYear]){
          for (const dayStatus in resData[jsonYear][dayStatusCounts]){
            if (dayStatus === 'missed'){
              for (const item in resData[jsonYear][dayStatusCounts][dayStatus]){                
                if (dataObjLabelsMissed.indexOf(item)=== -1){
                  dataObjLabelsMissed.push(item);
                }
              }
            }
            else if (dayStatus ==='found'){
              for (const item in resData[jsonYear][dayStatusCounts][dayStatus]){
                if (dataObjLabelsFound.indexOf(item)=== -1){
                  dataObjLabelsFound.push(item);
                }
              }
            }
          }
        }
      }
    }
  }
  else if (year ==='All'){
    for (const jsonYear in resData){
      for (const dayStatusCounts in resData[jsonYear]){
        for (const dayStatus in resData[jsonYear][dayStatusCounts]){
          if (dayStatus === 'missed'){
            for (const item in resData[jsonYear][dayStatusCounts][dayStatus]){
              if (dataObjLabelsMissed.indexOf(item)=== -1){
                dataObjLabelsMissed.push(item);
              }
            }
          }
          else if (dayStatus ==='found'){
            for (const item in resData[jsonYear][dayStatusCounts][dayStatus]){
          
              if (dataObjLabelsFound.indexOf(item)=== -1){
                dataObjLabelsFound.push(item);
              }
            }
          }
        }
      }
    }
  }
  if (status === 'Missed and Found Money'){
    let moneyStatusCombined = new Set(dataObjLabelsMissed.concat(dataObjLabelsFound));
    dataObjLabelsBoth = Array.from(moneyStatusCombined);
    return dataObjLabelsBoth;
  }
  else if (status === 'Missed Money'){
    return dataObjLabelsMissed;
  }
  else if (status === 'Found Money'){
    return dataObjLabelsFound;
  }
}
// end createGraphLabels function

function createDataObjBoth(resData, dataObjLabels, year){
  //NO STATUS because this is for both missed and found

  //data_dict is the obj that will be pushed to data_array_of_dicts. This is the format needed for the stacked bar graph from chart.js
  let dataObj = {'label':'','data':[], 'backgroundColor':''};
  let dataArrayOfObjs = [];

  if (year !== 'All'){

        //Loop over each item in the labels array and assign the item to the label key from the data_dict object.
      //Set up color as random color
    for (const moneyType of dataObjLabels){
      dataObj['label'] = moneyType;
      dataObj['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;

      //Create empty array that will hold the amount of money on that specific day, array has a length of 7 one spot for each day of the week.
      const dataArray = [0,0,0,0,0,0,0];
      
      //For Loop which will help assign the amount to the correct spot in the dataArray
      for (let j = 0; j<=6; j++){
        //Looks for the condition of if the obj is empty or the money type isn't in the object at the missed or found spot. This means that nothing matches this day of the week
        // and the dataArray should not be incremented in that spot
        if (((Object.keys(resData[year][j]['missed']).length === 0) && (Object.keys(resData[year][j]['found']).length === 0))
          && ((!(moneyType in resData[year][j]['missed'])) && (!(moneyType in resData[year][j]['found'])))){
            dataArray[j] += 0;
        }

        else{
          //Condition that looks for both the status options, if the money type doesn't exist at that option, the dataArray at that spot doesn't get incremented.
          for (const status in resData[year][j]){
            if (resData[year][j][status][moneyType] === undefined){
              dataArray[j] += 0; 
            }
            else{
              //if the money_type is there, then that amount gets added to the amount at that spot in the data array
              dataArray[j] += resData[year][j][status][moneyType];
            }
          }
        }
      }
      //after getting all the information on that money type, the dataArray is added to the data spot in the data_dict
      //this completes the dataObj, so it's pushed to dataArrayOfObjs and then data_dict is reset in preparation for the next money type.
      dataObj['data'] = dataArray;
      dataArrayOfObjs.push(dataObj);
      dataObj = {'label':'','data':[], 'backgroundColor':''};
    }
  }
  else if (year === 'All'){
    for (const moneyType of dataObjLabels){

      dataObj['label'] = moneyType;
      dataObj['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
      let dataArray = [0,0,0,0,0,0,0];
      
      //loops over each year in the response data
      for (const dataYear in resData){

        //Looks for the condition of if the obj is empty or the money type isn't in the object at the missed or found spot. This means that nothing matches this day of the week
        // and the data_array should not be incremented in that spot
        for (let j = 0; j<=6; j++){
          if (((Object.keys(resData[dataYear][j]['missed']).length === 0) && (Object.keys(resData[dataYear][j]['found']).length === 0))
              && ((!(moneyType in resData[dataYear][j]['missed'])) && (!(moneyType in resData[dataYear][j]['found'])))){
                dataArray[j] += 0;
          }
          
          else{
            //Loops over the missed/found status and if it's undefined at that spot, the count for that day doesn't get incremented, otherwise the data_array gets incremented at that index.
            for (const status in resData[dataYear][j]){
              if (resData[dataYear][j][status][moneyType] === undefined){
                dataArray[j] += 0;
              }
              else{
                dataArray[j] += resData[dataYear][j][status][moneyType];
              }
            }
          }
        }
      }
      //after getting all the information on that money type, the data_array is added to the data spot in the data_dict
      //this completes the data_dict, so it's pushed to data_array_of_dicts and then data_dict is reset in preparation for the next money type.
      dataObj['data'] = dataArray;
      dataArrayOfObjs.push(dataObj);
      dataObj = {'label':'','data':[], 'backgroundColor':''};
    }
  }


  return dataArrayOfObjs;
}

function createDataObjSpecific(resData, dataObjLabels, year, status){
  if (status === 'Missed Money'){
    status = 'missed';
  }
  else if (status === 'Found Money'){
    status = 'found';
  }

  let dataObj = {'label':'','data':[], 'backgroundColor':''};
  let dataArrayOfObjs = [];

  if (year !=='All'){
    for (const moneyType of dataObjLabels){
      dataObj['label'] = moneyType;
      dataObj['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
      const dataArray = [0,0,0,0,0,0,0];
      
      for (let j = 0; j<=6; j++){
  
        if ((Object.keys(resData[year][j][status]).length === 0) || (!(moneyType in resData[year][j][status]))){
          dataArray[j] += 0;
        }
  
        else{
          dataArray[j] += resData[year][j][status][moneyType]
        }
      }

      dataObj['data'] = dataArray;
      dataArrayOfObjs.push(dataObj);
      dataObj = {'label':'','data':[], 'backgroundColor':''}
    }

  }
  else if (year === 'All'){
    for (const moneyType of dataObjLabels){

      dataObj['label'] = moneyType;
      
      dataObj['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
      let dataArray = [0,0,0,0,0,0,0];

      for (const dataYear in resData){
        for (let j = 0; j<=6; j++){
          if ((Object.keys(resData[dataYear][j][status]).length === 0) || (!(moneyType in resData[dataYear][j][status]))){
            dataArray[j] += 0;
          }
    
          else{
            dataArray[j] += resData[dataYear][j][status][moneyType]
          }
        }
      }
      dataObj['data'] = dataArray;
      dataArrayOfObjs.push(dataObj);
      dataObj = {'label':'','data':[], 'backgroundColor':''}
    }

  }
  return dataArrayOfObjs;
}




//Stacked bar graph which filters on year and status
$.get('/data_by_user.json', res => {


  //reads in the user's data from the data_by_user json route
  //grabs the user selection of year and status
  //const resData = res.data;
  const userYear = $('#year').html();
  const moneyStatus = $('#missed').html();

  let finalDataArrayOfObjs = [];

  const moneyLabels = createGraphLabels(res.data, userYear, moneyStatus);

  if (moneyStatus === 'Missed and Found Money'){
    finalDataArrayOfObjs = createDataObjBoth(res.data, moneyLabels, userYear);
  }
  else{
    finalDataArrayOfObjs = createDataObjSpecific(res.data, moneyLabels, userYear, moneyStatus);
  }




  // //array that holds the objects needed for the graph
  // // const data_array_of_dicts = [];

  // // //array that holds the label information for the data_dict for both missed and found, labels are the money types
  // // let data_dict_labels = [];

  // // //array that holds the label information for the data_dict for missed and found, respectively.
  // // const data_dict_labels_missed = [];
  // // const data_dict_labels_found = [];

  // // //data_dict is the obj that will be pushed to data_array_of_dicts. This is the format needed for the stacked bar graph from chart.js
  // // let data_dict = {'label':'','data':[], 'backgroundColor':''};
  
  // // Condition to get the labels (money types) for if the user selects a specific year
  // if(user_year !== 'All'){
  //   for (const json_year in res_data){
  
  //     if (json_year === user_year){
  //       for (const day_status_counts in res_data[json_year]){
          
  //         for (const day_status in res_data[json_year][day_status_counts]){
            
  //           if (day_status === 'missed'){
             
  //             for (const item in res_data[json_year][day_status_counts][day_status]){
                
  //               if (data_dict_labels_missed.indexOf(item)=== -1){
  //                 data_dict_labels_missed.push(item);
  //               }
  //             }
  //           }
  //           else if (day_status ==='found'){
  //             for (const item in res_data[json_year][day_status_counts][day_status]){
  //               if (data_dict_labels_found.indexOf(item)=== -1){
  //                 data_dict_labels_found.push(item);
  //               }
  //             }
  //           }
  //         }
  //       }
  //     }
  //   }

  // //If the user wants missed and found money, the two label arrays are combined, turned into a set to remove duplicates and put back into array for,
  // if (money_status === 'Missed and Found Money'){
  //   let money_status_combined = new Set(data_dict_labels_missed.concat(data_dict_labels_found));
  //   data_dict_labels = Array.from(money_status_combined);

  //   //Loop over each item in the labels array and assign the item to the label key from the data_dict object.
  //   //Set up color as random color
  //   for (const money_type of data_dict_labels){
  //     data_dict['label'] = money_type;
  //     data_dict['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;

  //     //Create empty array that will hold the amount of money on that specific day, array has a length of 7 one spot for each day of the week.
  //     const data_array = [0,0,0,0,0,0,0];
      
  //     //For Loop which will help assign the amount to the correct spot in the data_array
  //     for (let j = 0; j<=6; j++){
  //       //Looks for the condition of if the obj is empty or the money type isn't in the object at the missed or found spot. This means that nothing matches this day of the week
  //       // and the data_array should not be incremented in that spot
  //       if (((Object.keys(res_data[user_year][j]['missed']).length === 0) && (Object.keys(res_data[user_year][j]['found']).length === 0))
  //         && ((!(money_type in res_data[user_year][j]['missed'])) && (!(money_type in res_data[user_year][j]['found'])))){
  //         data_array[j] += 0;
  //       }
  
  //       else{
  //         //Condition that looks for both the status options, if the money type doesn't exist at that option, the data_array at that spot doesn't get incremented.
  //         for (const status in res_data[user_year][j]){
  //           if (res_data[user_year][j][status][money_type] === undefined){
  //             data_array[j] += 0;
  //           }
  //           else{
  //             //if the money_type is there, then that amount gets added to the amount at that spot in the data array
  //             data_array[j] += res_data[user_year][j][status][money_type];
  //           }
  //         }
  //       }
  //     }
  //     //after getting all the information on that money type, the data_array is added to the data spot in the data_dict
  //     //this completes the data_dict, so it's pushed to data_array_of_dicts and then data_dict is reset in preparation for the next money type.
  //     data_dict['data'] = data_array;
  //     data_array_of_dicts.push(data_dict);
  //     data_dict = {'label':'','data':[], 'backgroundColor':''}
  //   }
  //  }
  // //Same process as above, but for found money. Simpler than when looking for both, because only the conditions where the status === 'found' need to be checked
  // else if (money_status === 'Found Money'){
  //   data_dict_labels = data_dict_labels_found;
  //   for (const money_type of data_dict_labels){
  //     data_dict['label'] = money_type;
  //     data_dict['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
  //     const data_array = [0,0,0,0,0,0,0];
      
  //     for (let j = 0; j<=6; j++){
  
  //       if ((Object.keys(res_data[user_year][j]['found']).length === 0) || (!(money_type in res_data[user_year][j]['found']))){
  //         data_array[j] += 0;
  //       }
  
  //       else{
  //         data_array[j] += res_data[user_year][j]['found'][money_type]
  //       }
  //     }

  //     data_dict['data'] = data_array;
  //     data_array_of_dicts.push(data_dict);
  //     data_dict = {'label':'','data':[], 'backgroundColor':''}
  //   }
  // }
  // //Same process as above, but for missed money. Simpler than when looking for both, because only the conditions where the status === 'missed' need to be checked
  // else if (money_status === 'Missed Money'){
  //   data_dict_labels = data_dict_labels_missed;
  //   for (const money_type of data_dict_labels){
  //     data_dict['label'] = money_type;
  //     data_dict['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
  //     const data_array = [0,0,0,0,0,0,0];
      
  //     for (let j = 0; j<=6; j++){
  
  //       if ((Object.keys(res_data[user_year][j]['missed']).length === 0) || (!(money_type in res_data[user_year][j]['missed']))){
  //         data_array[j] += 0;
  //       }
  //       else{
          
  //         data_array[j] += res_data[user_year][j]['missed'][money_type]
  //       }
  //     }

  //     data_dict['data'] = data_array;
  //     data_array_of_dicts.push(data_dict);
  //     data_dict = {'label':'','data':[], 'backgroundColor':''}
  //   }
  // }

  // }
  // //END of IF for specific year
  
  // //Starts the else if condition check for if the user wants to select all years
  // //loops through the response data from the ajax call from the data_by_user route
  // //Add the money_type (item) to the data_dict_labels array for missed and found using index of -1 to look for if it's already in there, so duplicates don't get added
  // else if (user_year ==='All'){
  //   for (const json_year in res_data){
  //     for (const day_status_counts in res_data[json_year]){
  //       for (const day_status in res_data[json_year][day_status_counts]){
  //         if (day_status === 'missed'){
  //           for (const item in res_data[json_year][day_status_counts][day_status]){
  //             if (data_dict_labels_missed.indexOf(item)=== -1){
  //               data_dict_labels_missed.push(item);
  //             }
  //           }
  //         }
  //         else if (day_status ==='found'){
  //           for (const item in res_data[json_year][day_status_counts][day_status]){
          
  //             if (data_dict_labels_found.indexOf(item)=== -1){
  //               data_dict_labels_found.push(item);
  //             }
  //           }
  //         }
  //       }
  //     }
      
  //   }

  //   if (money_status ==='Missed and Found Money') { 
  //     //combines the missed and found labels as a set to remove duplicates and turns it back into an array
  //     let money_status_combined = new Set(data_dict_labels_missed.concat(data_dict_labels_found));
  //     data_dict_labels = Array.from(money_status_combined);

  //     //loops through each money type from the array and sets it as the value for the label key of the data_dicts obj.
  //     //Sets up a random color for the color on the graph
  //     //Sets up data array to keep track of the totals per day of the week
  //     for (const money_type of data_dict_labels){

  //       data_dict['label'] = money_type;
  //       data_dict['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
  //       let data_array = [0,0,0,0,0,0,0];
        
  //       //loops over each year in the response data
  //       for (const data_year in res_data){

  //         //Looks for the condition of if the obj is empty or the money type isn't in the object at the missed or found spot. This means that nothing matches this day of the week
  //         // and the data_array should not be incremented in that spot
  //         for (let j = 0; j<=6; j++){
  //           if (((Object.keys(res_data[data_year][j]['missed']).length === 0) && (Object.keys(res_data[data_year][j]['found']).length === 0))
  //               && ((!(money_type in res_data[data_year][j]['missed'])) && (!(money_type in res_data[data_year][j]['found'])))){
  //             data_array[j] += 0;
  //           }
            
  //           else{
  //             //Loops over the missed/found status and if it's undefined at that spot, the count for that day doesn't get incremented, otherwise the data_array gets incremented at that index.
  //             for (const status in res_data[data_year][j]){
  //               if (res_data[data_year][j][status][money_type] === undefined){
  //                 data_array[j] += 0;
  //               }
  //               else{
  //                 data_array[j] += res_data[data_year][j][status][money_type];
  //               }
  //             }
  //           }
  //         }
  //       }
  //       //after getting all the information on that money type, the data_array is added to the data spot in the data_dict
  //       //this completes the data_dict, so it's pushed to data_array_of_dicts and then data_dict is reset in preparation for the next money type.
  //       data_dict['data'] = data_array;
  //       data_array_of_dicts.push(data_dict);
  //       data_dict = {'label':'','data':[], 'backgroundColor':''}
  //     }
  //   }

  //   //Same process as the else if above, but for found money. Simpler than when looking for both, because only the conditions where the status === 'found' need to be checked
  //   else if(money_status === 'Found Money'){
  //     data_dict_labels = data_dict_labels_found;

  //     for (const money_type of data_dict_labels){

  //       data_dict['label'] = money_type;
  //       console.log(data_dict);
  //       data_dict['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
  //       let data_array = [0,0,0,0,0,0,0];

  //       for (const data_year in res_data){
  //         for (let j = 0; j<=6; j++){
  //           if ((Object.keys(res_data[data_year][j]['found']).length === 0) || (!(money_type in res_data[data_year][j]['found']))){
  //             data_array[j] += 0;
  //           }
      
  //           else{
  //             data_array[j] += res_data[data_year][j]['found'][money_type]
  //           }
  //         }
  //       }
  //       data_dict['data'] = data_array;
  //       data_array_of_dicts.push(data_dict);
  //       data_dict = {'label':'','data':[], 'backgroundColor':''}
  //     }

  //   }
  //   //Same process as the else if above, but for missed money. Simpler than when looking for both, because only the conditions where the status === 'missed' need to be checked
  //   else if(money_status === 'Missed Money'){
  //     data_dict_labels = data_dict_labels_found;

  //     for (const money_type of data_dict_labels){
  //       data_dict['label'] = money_type;
  //       data_dict['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
  //       let data_array = [0,0,0,0,0,0,0];

  //       for (const data_year in res_data){
  //         for (let j = 0; j<=6; j++){
              
  //           if ((Object.keys(res_data[data_year][j]['missed']).length === 0) || (!(money_type in res_data[data_year][j]['missed']))){
  //             data_array[j] += 0;
  //           }
      
  //           else{
  //             data_array[j] += res_data[data_year][j]['missed'][money_type]
  //           }
  //         }

  //       }
  //       data_dict['data'] = data_array;
  //       data_array_of_dicts.push(data_dict);
  //       data_dict = {'label':'','data':[], 'backgroundColor':''}
  //     }

  //   }

  // }

  //Graph DATA
    const data = {
        labels:labels,
        datasets : finalDataArrayOfObjs
    };

    new Chart($('#stackedbar'), {
        type: 'bar',
        data: data,
        options: {
          plugins: {
            title: {
              display: true,
              text: 'Money Type Found Per Day'
            },
          },
          responsive: true,
          scales: {
            x: {
              stacked: true
            },
            y: {
              stacked: true
            }
          }
        }
      });
}); 
// End stacked bar with filters