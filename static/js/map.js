'use strict';

const markers = [];
// Create our number formatter.
const formatter = new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
  
    // These options are needed to round to whole numbers if that's what you want.
    //minimumFractionDigits: 0, // (this suffices for whole numbers, but will print 2500.10 as $2,500.1)
    //maximumFractionDigits: 0, // (causes 2500.99 to be printed as $2,501)
  });

// map for dashboard
function initMap() {
    
    let map = new google.maps.Map(document.querySelector("#map"), {
        center: { lat: 44.9778, lng: -93.2650},
        zoom: 6,
    });

    $.get('/all_addreses.json', res =>{
       
        let res_data = res.data;
        let grouped_by_address = {}
        const year = $('#year').html();

        const res_data_filtered = [];
        const missed = $('#missed').html();


        if (year === 'All' && missed === 'Missed and Found Money'){
            res_data = res_data
            grouped_by_address = _.groupBy(res_data, function(address){
                return address.addr
            })
 
        }
        else if (year === 'All' && missed === 'Missed Money'){
            for (const elem in res_data){
                if (res_data[elem].missed ==true){
                    res_data_filtered.push(res_data[elem]);
                }
            }
            res_data = res_data_filtered
            grouped_by_address = _.groupBy(res_data, function(address){
                return address.addr
            })  


        }
        else if (year === 'All' && missed === 'Found Money'){
            for (const elem in res_data){
                if (res_data[elem].missed ==false){
                    res_data_filtered.push(res_data[elem]);
                }
            }
            res_data = res_data_filtered
            grouped_by_address = _.groupBy(res_data, function(address){
                return address.addr
            })  

        }

        else if (year !== 'All' && missed === 'Missed and Found Money'){
            for (const elem in res_data){
                if (res_data[elem].year==year){
                    res_data_filtered.push(res_data[elem]);
                }
            }
            res_data = res_data_filtered
            grouped_by_address = _.groupBy(res_data, function(address){
                return address.addr
            })  

        }
        else if (year !== 'All' && missed === 'Missed Money'){
            for (const elem in res_data){
                if (res_data[elem].year==year && res_data[elem].missed ==true){
                    res_data_filtered.push(res_data[elem]);
                }
            }
            res_data = res_data_filtered
            grouped_by_address = _.groupBy(res_data, function(address){
                return address.addr
            })  

        }
        else if (year !== 'All' && missed === 'Found Money'){
            for (const elem in res_data){
                if (res_data[elem].year==year && res_data[elem].missed ==false){
                    res_data_filtered.push(res_data[elem]);
                }
            }
            res_data = res_data_filtered
            grouped_by_address = _.groupBy(res_data, function(address){
                return address.addr
            })  

        }
    
        for (const [key, value] of Object.entries(grouped_by_address)) {

            
             let amount = 0;
            if (key !== 'null'){
                //console.log(grouped_by_address[key][0]);
                let addr = grouped_by_address[key][0]['addr'];
                let city = grouped_by_address[key][0]['city'];
                let state = grouped_by_address[key][0]['state'];
                
                let locName = ''
                for (const item of value){
                    amount += parseFloat(item['amount']);
                    locName = item['loc'];
                }

                
                //need to use the  "/ /g" to replace all the spaces with +, otherwise it just does the first space
                addr = addr.replace(/ /g, '+');
                city = city.replace(/ /g, '+');

                $.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${addr},${city},${state}&key=AIzaSyCUeZby2DFNDpmdijQONTq4yfhsDknpD3I`, loc_res =>{
                    
                        const marker = new google.maps.Marker({
                        position: loc_res['results'][0]['geometry']['location'],
                        title: locName,
                        map:map,
                        icon: {
                            url: '/static/img/coin.png',
                            scaledSize: {
                            width: 15,
                            height: 15,
                            },
                        },
                        })
                    
                        const markerInfo = `<h6>${marker.title}</h6>
                                               <p>Total ${missed} at this location: ${formatter.format(amount)}</p>`;

                        const infoWindow = new google.maps.InfoWindow({
                            content:markerInfo,
                            maxWidth:150,
                        });
                        marker.addListener('click', ()=>{
                            infoWindow.open(map, marker);
                        });

                });
            }

        }

    })
}
//end of map for dashboard


//start of map for coin page
function coinMap(){
    let coinMap = new google.maps.Map(document.querySelector("#coinMap"), {
        center: { lat: 44.9778, lng: -93.2650},
        zoom: 6,
    });

    $.get('/all_addreses.json', res =>{
        let max_id = res.data[0]['id'];
        let most_rec_entry = res.data[0];
        for (const entry in res.data){
            if (res.data[entry]['id'] > max_id){
                max_id  = res.data[entry]['id'];
                most_rec_entry = res.data[entry];
            }
        }
        
        $.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${most_rec_entry['addr']},${most_rec_entry['city']},${most_rec_entry['state']}&key=AIzaSyCUeZby2DFNDpmdijQONTq4yfhsDknpD3I`, loc_res =>{

            const marker = new google.maps.Marker({
                position: loc_res.results[0].geometry.location,
                title: most_rec_entry['loc'],
                map:coinMap,
                icon: {
                    url: '/static/img/coin.png',
                    scaledSize: {
                    width: 15,
                    height: 15,
                    },
                },
            })
            let missed = most_rec_entry['missed']
            if (missed === true){
                missed = 'Missed'
            }
            else if (missed === false){
                missed = 'Found'
            }
            const markerInfo = `<h6>Last Location</h6>
                                <p>${marker.title}</p>
                                <p>${missed} : ${formatter.format(most_rec_entry['amount'])}</p>`;

            const infoWindow = new google.maps.InfoWindow({
            content:markerInfo,
            maxWidth:150,
            });
            marker.addListener('click', ()=>{
            infoWindow.open(coinMap, marker);
            });

            coinMap.setCenter(loc_res.results[0].geometry.location);
        })
    })

}
//end of map for coin page

