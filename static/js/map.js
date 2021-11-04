'use strict';

let map;

function initMap() {
  map = new google.maps.Map(document.querySelector("#map"), {
    center: { lat: 44.9778, lng: -93.2650},
    zoom: 7,
  });
}

$.get('/all_addreses.json', res =>{
    //need empty list to hold the lat/lon
    //create empty dictionary like this (probably just name and coords)     {
    //   name: 'Montgomery Station',
    //   coords: {
    //     lat: 37.7894094,
    //     lng: -122.4013037,
    //   },
    // }
    // loop over res.data and assign the address parts are variable
        //do get req through geocode url using address variables
        //create empty dictionary for lat/lon to be appeneded to the coords of above dict
        //reset lat/lon dict
    //append whole thing to location list
    //reset name/coords dict
    
    const data = res.data;
    $.get()
})