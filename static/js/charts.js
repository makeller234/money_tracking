'use strict';

const labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];


// //Polar Area
// $.get('/coin_counts.json', res=>{
//   // const year = $('#year').html();

  

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
  //returns an array of the labels (unique money types) for the stacks on the bar graph.  Array is filtered based on the year and status.
  let dataObjLabelsBoth = [];
  let dataObjLabelsMissed = [];
  let dataObjLabelsFound = [];

  // loops over the data and compares it to if the user selected a specific year.  If the money type isn't in the associated array, it gets added to that array
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
  // loops over all the data and adds the unique money types to their corresponding arrays.
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

  //sets up the return values given the user's selection for status.
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

function createDataObjBoth(resData, dataObjLabels, year){
  //No status because this is for both missed and found

  //dataObj is the obj that will be pushed to dataArrayOfObjs. This is the format needed for the stacked bar graph from chart.js
  let dataObj = {'label':'','data':[], 'backgroundColor':''};
  let dataArrayOfObjs = [];

  if (year !== 'All'){

    //Loop over each item in the labels array and assign the item to the label key from dataObj.
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
          //Condition that looks for both the status options, if the money type doesn't exist at that option, the dataArray at that spot isn't incremented.
          for (const status in resData[year][j]){
            if (resData[year][j][status][moneyType] === undefined){
              dataArray[j] += 0; 
            }
            else{
              //if the moneyType is there, then the amount gets added to the amount at that spot in the data array
              dataArray[j] += resData[year][j][status][moneyType];
            }
          }
        }
      }
      //after getting all the information on that money type, the dataArray is added to the data key in the dataObj
      //this completes the dataObj, so it's pushed to dataArrayOfObjs and then dataObj is reset in preparation for the next money type.
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
      
      //loops over each year in the data
      for (const dataYear in resData){
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
      dataObj['data'] = dataArray;
      dataArrayOfObjs.push(dataObj);
      dataObj = {'label':'','data':[], 'backgroundColor':''};
    }
  }
  return dataArrayOfObjs;
}

function createDataObjSpecific(resData, dataObjLabels, year, status){
  //A similar function to createDataObjBoth, only this function takes into account if the user is looking for a specific status.

  // converts the status from the function declaration into the wording that is used as a key in the resData
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
  const userYear = $('#year').html();
  const moneyStatus = $('#missed').html();

  //sets up an empty array that will hold the final data that is given to the graph
  let finalDataArrayOfObjs = [];

  //creates the money labels given the user's selections
  const moneyLabels = createGraphLabels(res.data, userYear, moneyStatus);

  //sets up the final data given the user's selection
  if (moneyStatus === 'Missed and Found Money'){
    finalDataArrayOfObjs = createDataObjBoth(res.data, moneyLabels, userYear);
  }
  else{
    finalDataArrayOfObjs = createDataObjSpecific(res.data, moneyLabels, userYear, moneyStatus);
  }

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