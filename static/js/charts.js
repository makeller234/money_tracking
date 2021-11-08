'use strict';

const labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

//Polar Area
$.get('/coin_counts.json', res=>{

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


// Stacked bar graph
$.get('/data_by_user.json', res => {
  const res_data = res.data;
  const data_array_of_dicts = [];
  //data_dict set up this way because of structe of how data is needed for the graph
  
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
    const data_array = [];
    
    for (let j = 0; j<=6; j++){

      if ((Object.keys(res_data[j]).length === 0) || (!(i in res_data[j]))){
        data_array.push(0);
      }

      else{
        data_array.push(res_data[j][i])
      }
    }

    data_dict['data'] = data_array;
    data_array_of_dicts.push(data_dict);
    data_dict = {'label':'','data':[], 'backgroundColor':''}
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
