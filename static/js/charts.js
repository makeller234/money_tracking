'use strict';

const labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
const colors = ['red', 'orange', 'yellow', 'green', 'blue', 'purple'];

//Attempt at stacked bar
// $.get('/data_by_user.json', res => {
//   const res_data = res.data;
//   //console.log(res.data);
//   const data_array_of_dicts = [];
//   const data_array_of_amt = [];

//   for (const whole in res_data){
//     console.log(res_data[whole]);
//     let data_obj = {};
//     for (const coin in res_data[whole]){
//       console.log(coin);
//       let labe = {'label': coin}
//       data_obj = Object.assign(labe);
//       if coin == data_object.key{
//         data_array_of_amt.push(res_data[whole][coin])
//       }
//       //console.log(res_data[whole])
//       //data_obj[coin] = res_data[whole][coin];
//       //get(data_obj, coin, res_data[whole][coin]) += res_data[whole][coin];
      
//     }
//     //console.log('out of inner');
//   }

//   // console.log(res);
//   // const testk = [];
//   // const testv = [];
//   // for (const [k, v] of Object.entries(res.data[0])){
//   //   testv.push(v);
//   //   testk.push(k);
//   // }
//   // const test2k = []
//   // const test2v =[]
//   // for (const [k, v] of Object.entries(res.data[1])){
//   //   test2v.push(v);
//   //   test2k.push(k);
//   // }
//   //Graph DATA
//     const data = {
//         labels:labels,
//         datasets :[
//             // {
//             //   label: testk[0],
//             //   data: testv,
//             //   backgroundColor: 'rgb(255,102,178)'
//             // } ,
//             // {
//             //   label: test2k[0],
//             //   data: test2v,
//             //   backgroundColor: 'rgb(0,0,102)'
//             // } //,
//             // {
//             //   label: Object.keys(res.data[0]),
//             //   data: res.data[0],
//             //   backgroundColor: 'rgb(51,255,51)'
//             // },
//             // {
//             //   label: Object.keys(res.data[1]),
//             //   data: res.data[1],
//             //   backgroundColor: 'rgb(0,50,102)'
//             // }


//         ]
//     };

//     new Chart($('#stackedbar'), {
//         type: 'bar',
//         data: data,
//         options: {
//           plugins: {
//             title: {
//               display: true,
//               text: 'Money Type Found Per Day'
//             },
//           },
//           responsive: true,
//           scales: {
//             x: {
//               stacked: true,
//             },
//             y: {
//               stacked: true
//             }
//           }
//         }
//       });
      

// });


//regular bar graph
$.get('/data_by_user.json', res =>{
  //console.log(res.data);
  const weekly_array = [];
  let daily_tally= 0;
  for (const item in res.data){
    for (const elem in res.data[item]){
      daily_tally += res.data[item][elem];
    }
    weekly_array.push(daily_tally);
    daily_tally = 0;
  }


  const data = {
    labels: labels,
    datasets: [{
      //label: lables,
      data: weekly_array,
      backgroundColor: colors

    }]
  };

  new Chart($('#stackedbar'), {
    type: 'bar',
    data: data,
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    },
  });
});

