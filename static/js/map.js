'use strict';

const markers = [];

function initMap() {

    let map = new google.maps.Map(document.querySelector("#map"), {
        center: { lat: 44.9778, lng: -93.2650},
        zoom: 7,
    });

    $.get('/all_addreses.json', res =>{
 
        let res_data = res.data;
    
        const year = $('#year').html();
        const res_data_by_year = [];

        if (year === 'All'){
            res_data = res_data
        }
        else{
            for (const elem in res_data){
                if (res_data[elem].year==year){
                    res_data_by_year.push(res_data[elem]);
                }
            }
            res_data = res_data_by_year
        }
        
        for (const elem in res_data) {
   
            if (res_data[elem]['addr'] !== null){
                let addr = res_data[elem]['addr'];
                let city = res_data[elem]['city'];
                let state = res_data[elem]['state'];
            
                //need to use the  "/ /g" to replace all the spaces with +, otherwise it just does the first space
                addr = addr.replace(/ /g, '+');
                city = city.replace(/ /g, '+');
            

                console.log('line 44')
                $.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${addr},${city},${state}&key=AIzaSyCUeZby2DFNDpmdijQONTq4yfhsDknpD3I`, loc_res =>{

                    markers.push(
                        new google.maps.Marker({
                        position: loc_res['results'][0]['geometry']['location'],
                        title: res_data[elem]['loc'],
                        map:map,
                        icon: {
                            url: '/static/img/coin.png',
                            scaledSize: {
                            width: 15,
                            height: 15,
                            },
                        },
                        })
                        
                    );
                    for (const marker of markers){
                    
                        const markerInfo = `<h6>${marker.title}</h6>`;

                        const infoWindow = new google.maps.InfoWindow({
                            content:markerInfo,
                            maxWidth:150,
                        });
                        marker.addListener('click', ()=>{
                            infoWindow.open(map, marker);
                        });
                    }
                });
                
            }

        }
       
    })

}
