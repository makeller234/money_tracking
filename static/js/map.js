'use strict';

const lat_lng_array = [];
$.get('/all_addreses.json', res =>{
    const data = res.data;

    for (const elem in data) {
       
        let addr = data[elem]['addr'];
        let city = data[elem]['city'];
        let state = data[elem]['state'];
        let locname = data[elem]['loc'];
      
        //need to use the  "/ /g" to replace all the spaces with +, otherwise it just does the first space
        addr = addr.replace(/ /g, '+');
        city = city.replace(/ /g, '+');
        const loc_obj = {'name': '',
                         'coords': {}};
      
        $.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${addr},${city},${state}&key=AIzaSyCUeZby2DFNDpmdijQONTq4yfhsDknpD3I`, loc_res =>{
            
           
            loc_obj['name'] = locname;
            loc_obj['coords'] = loc_res['results'][0]['geometry']['location'];
            //console.log(loc_obj);
            lat_lng_array.push(loc_obj);
            console.log(lat_lng_array);
            
        });
    }
    for (const item of lat_lng_array){
        console.log(item);
    }
})

//console.log(lat_lng_array);
function initMap() {

    let map = new google.maps.Map(document.querySelector("#map"), {
        center: { lat: 44.9778, lng: -93.2650},
        zoom: 7,
    });


//    console.log(`full array:`);
//    console.log(lat_lng_array);
//    console.log(`first item in array:`)
//    console.log(lat_lng_array[0])
//    console.log(`trying to get name:`)
//    console.log(lat_lng_array[0]['name'])

    // const homeMarker = new google.maps.Marker({
    //     position: lat_lng_array[0]['coords'],
    //     title: lat_lng_array[0]['name'],
    //     map:map
    // })
    // homeMarker.setMap(map);

    //console.log(typeof lat_lng_array); 
    // for (const item of lat_lng_array){
    //     console.log(item);
    // }
        
    // const markers = [];
    // for (const location of locations) {
    //     console.log(location.name);
    //     console.log(location.coords);
    //     markers.push(
    //         new google.maps.Marker({
    //         position: location['coords'],
    //         title: location['name'],
    //         map:map,
    //         icon: {
    //             // custom icon
    //             url: '/static/img/coin.png',
    //             scaledSize: {
    //             width: 30,
    //             height: 30,
    //             },
    //         },
    //         })
    //     );
    //     }

}