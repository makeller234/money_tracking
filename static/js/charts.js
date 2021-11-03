'use strict';

const labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

$.get('/data_by_user.json', res => {
    const data = res.data;
    console.log(data);
});



// const config = {
//     type: 'bar',
//     data: data,
//     options: {
//       plugins: {
//         title: {
//           display: true,
//           text: 'Chart.js Bar Chart - Stacked'
//         },
//       },
//       responsive: true,
//       scales: {
//         x: {
//           stacked: true,
//         },
//         y: {
//           stacked: true
//         }
//       }
//     }
//   };