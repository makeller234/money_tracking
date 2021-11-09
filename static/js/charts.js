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


// Stacked bar graph
$.get('/data_by_user.json', res => {

  const res_data = res.data;
  const year = $('#year').html();

  const data_array_of_dicts = [];
  const data_dict_labels = [];

  if(year !== 'All'){
    for (const elem in res_data){
      if (elem === year){
        for (const el in res_data[elem]){
          for (const e in res_data[elem][el]){
            if (data_dict_labels.indexOf(e)=== -1){
              data_dict_labels.push(e)
            }
          }
        }
      }
    }

    //data_dict set up this way because of structe of how data is needed for the graph
    let data_dict = {'label':'','data':[], 'backgroundColor':''}

    for (const i of data_dict_labels){
      data_dict['label'] = i;
      data_dict['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
      const data_array = [];
      
      for (let j = 0; j<=6; j++){
        // console.log(res_data);
        if ((Object.keys(res_data[year][j]).length === 0) || (!(i in res_data[year][j]))){
          data_array.push(0);
        }

        else{
          data_array.push(res_data[year][j][i])
        }
      }

      data_dict['data'] = data_array;
      data_array_of_dicts.push(data_dict);
      data_dict = {'label':'','data':[], 'backgroundColor':''}
    }
  }
  
  else {
    for (const elem in res_data){
          for (const el in res_data[elem]){
            for (const e in res_data[elem][el]){
              if (data_dict_labels.indexOf(e)=== -1){
                data_dict_labels.push(e)
              }
            }
          }
        }
        let data_dict = {'label':'','data':[], 'backgroundColor':''}
      
        for (const i of data_dict_labels){
          data_dict['label'] = i;
          data_dict['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
          let data_array = [0,0,0,0,0,0,0];
          
          for (const elem in res_data){
            for (let j = 0; j<=6; j++){
              if ((Object.keys(res_data[elem][j]).length === 0) || (!(i in res_data[elem][j]))){

                data_array[j] =data_array[j] + 0;
              }
        
              else{
                data_array[j] = data_array[j] + res_data[elem][j][i];
              }
            }
          }
      
          data_dict['data'] = data_array;
          data_array_of_dicts.push(data_dict);
          data_dict = {'label':'','data':[], 'backgroundColor':''}
        }
  }


  //Graph DATA
    const data = {
        labels:labels,
        datasets : data_array_of_dicts
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
//end stacked bar