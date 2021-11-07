'use strict';

const labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

//Polar Area
$.get('/coin_counts.json', res=>{
  //console.log(res.data);

  const data_array = [];
  const backg_color = []
  for (const item in res.data){
    data_array.push(res.data[item]);

    backg_color.push(`rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`)
  }
  const data = {
    labels: Object.keys(res.data),
    datasets: [{
      label: 'This Better Work',
      data: data_array,
      backgroundColor: backg_color
    }]
    
  };
  new Chart($('#polar'), {
    type: 'polarArea',
    data: data,
    options: {}
  });

})
//end polar area graph.


// Attempt at stacked bar
$.get('/data_by_user.json', res => {
  const res_data = res.data;
  const data_array_of_dicts = [];
  //data_dict set up this way because of structe of how data is needed for the graph
  
  //console.log(res.data);
  const data_dict_labels = [];
  for (const elem in res_data){
    for (const el in res_data[elem]){
      if (data_dict_labels.indexOf(el)=== -1){
        data_dict_labels.push(el)
      }
    }
  }

  let data_dict = {'label':'','data':[], 'backgroundColor':''}

  for (const i of data_dict_labels){
    data_dict['label'] = i;
    data_dict['backgroundColor'] = `rgb(${Math.random()*256},${Math.random()*256},${Math.random()*256})`;
    data_array_of_dicts.push(data_dict);
    data_dict = {'label':'','data':[], 'backgroundColor':''}
  }

  let a = 0;
  let b = 0;
  let c = 0;
  let amounts_array= [];  //add 0s and coin amounts to this list and then add this list to data_dict['data'] at end of coin loop instead of updating data_dict['data'] w/ every loop 

  // start item first data loops
  for (const elem in res_data){
    console.log(`${a}: elem`);
    console.log(res_data[elem]);
    a+=1;
    if (Object.keys(res_data[elem]).length === 0){
      amounts_array.push(0)

    }
    else {
      for (const item of data_array_of_dicts){
        // console.log(`${b} item:`);
        // console.log(item);
        b+=1;
        for (const coin in res_data[elem]) {
          // console.log(`${c} item label then coin:`)
          // console.log(item['label']);
          // console.log(coin);
          c+=1

          if (coin === item['label']){
            // console.log('made it to inside IF statment');
            //console.log(coin);
            // console.log(res_data[elem]);
            //console.log(`item label ${item['label']}`);
          
            amounts_array.push(res_data[elem][coin]);
            //another_test_variable += res_data[elem][coin];
            // console.log('IF data array of dicts')
            // console.log(data_array_of_dicts)
          }

        }
        console.log(amounts_array);
        item['data'] = amounts_array;
      }
      
    }
    //amounts_array = [];
  }
  // end item first data loops

  // //start coin first data loops
  // for (const elem in res_data){
  //   console.log(`${a}: elem`);
  //   console.log(res_data[elem]);
  //   a+=1;
  //   if (Object.keys(res_data[elem]).length === 0){
  //     amounts_array.push(0)

  //   }
  //   for (const coin in res_data[elem]) {
  //     console.log(`${b} coin:`);
  //     console.log(coin);
  //     b+=1;
  //     for (const item of data_array_of_dicts){
  //       console.log(`${c} item label then item:`)
  //       console.log(item['label']);
  //       console.log(item);
  //       c+=1
  //       if (coin === item['label']){

  //         //console.log(coin);
  //         // console.log(res_data[elem]);
  //         //console.log(`item label ${item['label']}`);
        
  //         amounts_array.push(res_data[elem][coin]);

  //         // console.log('IF data array of dicts')
  //         // console.log(data_array_of_dicts)
  //       }
  //       item['data'] = amounts_array;
  //     }
      
  //   }
    
  // }
  // //end coin first data loops
console.log(data_array_of_dicts);


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


// //regular bar graph
// $.get('/data_by_user.json', res =>{
//   //console.log(res.data);
//   const weekly_array = [];
//   let daily_tally= 0;
//   for (const item in res.data){
//     for (const elem in res.data[item]){
//       daily_tally += res.data[item][elem];
//     }
//     weekly_array.push(daily_tally);
//     daily_tally = 0;
//   }


//   const data = {
//     labels: labels,
//     datasets: [{
//       //label: lables,
//       data: weekly_array,
//       backgroundColor: colors

//     }]
//   };

//   new Chart($('#stackedbar'), {
//     type: 'bar',
//     data: data,
//     options: {
//       scales: {
//         y: {
//           beginAtZero: true
//         }
//       }
//     },
//   });
// });  
// //end regular bar graph

