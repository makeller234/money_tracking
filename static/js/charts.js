'use strict';

const labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

$.get('/data_by_user.json', res => {
    const data = {
        labels:labels,
        datasets :[
            {
                label: Object.keys(res.data[0]),
                data: res.data[0],
                backgroundColor: 'rgb(255,102,178)'
                
            },
            {
                label: Object.keys(res.data[1]),
                data: res.data[1],
                backgroundColor: 'rgb(0,0,102)'
            },
            {
                label: Object.keys(res.data[2]),
                data: res.data[2],
                backgroundColor: 'rgb(51,255,51)'
            }

        ]
    };
console.log(res.data[1]);

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
              stacked: true,
            },
            y: {
              stacked: true
            }
          }
        }
      });
      

});
