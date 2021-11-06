'use strict';

const lat_lng_array = [];


function initMap() {

    let map = new google.maps.Map(document.querySelector("#map"), {
        center: { lat: 44.9778, lng: -93.2650},
        zoom: 7,
    });

    $.get('/all_addreses.json', res =>{
        const data = res.data;
    
        for (const elem in data) {
            if (data[elem]['addr'] !== null){
                let addr = data[elem]['addr'];
                let city = data[elem]['city'];
                let state = data[elem]['state'];
            
                //need to use the  "/ /g" to replace all the spaces with +, otherwise it just does the first space
                addr = addr.replace(/ /g, '+');
                city = city.replace(/ /g, '+');
            

                // const markers = [];
                // $.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${addr},${city},${state}&key=AIzaSyCUeZby2DFNDpmdijQONTq4yfhsDknpD3I`, loc_res =>{
                //     // console.log(data[elem]['id']);
                //     // console.log(loc_res['results'][0]['geometry']['location']);
                //     markers.push(
                //         new google.maps.Marker({
                //         position: loc_res['results'][0]['geometry']['location'],
                //         title: loc_res['name'],
                //         map:map,
                //         icon: {
                //             url: '/static/img/coin.png',
                //             scaledSize: {
                //             width: 15,
                //             height: 15,
                //             },
                //         },
                //         })
                //     );
                
                // });
            }

           
  
        }
       
    })

}
