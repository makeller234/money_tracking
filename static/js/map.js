'use strict';

// Create our number formatter for dollar values.
const formatter = new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',

  });

// map for dashboard
function initMap() {
    //created a new google map centered on Minneapolis
    let map = new google.maps.Map(document.querySelector("#map"), {
        center: { lat: 44.9778, lng: -93.2650},
        zoom: 6,
    });

	$.get('/all_addresses.json', res =>{
			
		//Gets the data from the all_addresses json route 
		//Create empty object to hold the data for when the same addresses are grouped together.
		//Create an empty array to hold the filtered data based on user choice
		//Gets the user selection of the year they want to view as well as the missed/found status
		let resData = res.data;
		let groupedByAddress = {}
		const resDataFiltered = [];
		const year = $('#year').html();
		const moneyStatus = $('#missed').html();

		//sets up conditions to check for what the user indicates and then uses the _.groupBy to 
		// add to the dictionary the key of the address and the value of the information on each money item for that address
		if (year === 'All' && moneyStatus === 'Missed and Found Money'){
			groupedByAddress = _.groupBy(resData, function(address){
					return address.addr
			})
		}
		else if (year === 'All' && moneyStatus === 'Missed Money'){
			for (const elem in resData){
					if (resData[elem].missed ==true){
							resDataFiltered.push(resData[elem]);
					}
			}
			groupedByAddress = _.groupBy(resDataFiltered, function(address){
					return address.addr
			})  
		}
		else if (year === 'All' && moneyStatus === 'Found Money'){
			for (const elem in resData){
					if (resData[elem].missed ==false){
							resDataFiltered.push(resData[elem]);
					}
			}
			groupedByAddress = _.groupBy(resDataFiltered, function(address){
					return address.addr
			})  
		}
		else if (year !== 'All' && moneyStatus === 'Missed and Found Money'){
			for (const elem in resData){
					if (resData[elem].year==year){
							resDataFiltered.push(resData[elem]);
					}
			}
			resData = resDataFiltered
			groupedByAddress = _.groupBy(resData, function(address){
					return address.addr
			})  

		}
		else if (year !== 'All' && moneyStatus === 'Missed Money'){
			for (const elem in resData){
					if (resData[elem].year==year && resData[elem].missed ==true){
							resDataFiltered.push(resData[elem]);
					}
			}
			resData = resDataFiltered
			groupedByAddress = _.groupBy(resData, function(address){
					return address.addr
			})  
		}
		else if (year !== 'All' && moneyStatus === 'Found Money'){
			for (const elem in resData){
					if (resData[elem].year==year && resData[elem].missed ==false){
							resDataFiltered.push(resData[elem]);
					}
			}
			resData = resDataFiltered
			groupedByAddress = _.groupBy(resData, function(address){
					return address.addr
			})  
		}

		//loop over the keys and values of the grouped address object.
		for (const [key, value] of Object.entries(groupedByAddress)) {
			
			//set condition for if there isn't an address, so that those entries can be skipped and won't appear on the map
			if (key !== 'null'){
				// assign the necessary values that are needed by the google maps API
				let addr = groupedByAddress[key][0]['addr'];
				let city = groupedByAddress[key][0]['city'];
				let state = groupedByAddress[key][0]['state'];

				//turn the spaces into +, because that's what'n needed for the maps API url.
				//need to use the  "/ /g" to replace all the spaces with +, otherwise it just does the first space
				addr = addr.replace(/ /g, '+');
				city = city.replace(/ /g, '+');
				
				//for each value, add the value's amount to the amount variable and assign the location's name.
				let amount = 0;
				let locName = '';
				for (const item of value){
						amount += parseFloat(item['amount']);
						locName = item['loc'];
				}

				//use google maps API to get the lat/lng information for each address so that it can be used to put a marker on the map
				$.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${addr},${city},${state}&key=AIzaSyCUeZby2DFNDpmdijQONTq4yfhsDknpD3I`, loc_res =>{
					
					//sets up custom map icon to be green if the value is at or above .1 and black if less than .1
					let iconUrl = '';
					if (amount >= .1){
						iconUrl = '/static/img/darker_green_coin.png';
					
					}
					else{
						iconUrl = '/static/img/coin.png';
					}

					const marker = new google.maps.Marker({
					position: loc_res['results'][0]['geometry']['location'],
					title: locName,
					map:map,
					icon: {
							url: iconUrl,
							scaledSize: {
							width: 15,
							height: 15,
							},
					},
					})
					//add information to the info window to display the location name, money status (missed/found or both), and amount
					const markerInfo = `<h6>${marker.title}</h6>
										<p>Total ${moneyStatus}: ${formatter.format(amount)}</p>`;

					const infoWindow = new google.maps.InfoWindow({
							content:markerInfo,
							maxWidth:150,
					});
					// add a listener so that the infowindow shows up when the marker is clicked
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
	//creates a new google map for the coin page, centers on USA when no data is present in database for the user
	let coinMap = new google.maps.Map(document.querySelector("#coinMap"), {
		zoom: 4,
		center: {'lat': 37.0902, 'lng': -95.7129}
	});

	$.get('/all_addresses.json', res =>{

		//gets the address from the all_addresses route and assigns the first one as the value of maxId
		// this will be used to loop through the list of addresses to find the one with the max id as this is the last entry
		// and will be used as the location for the marker on the map
		let maxId = res.data[0]['id'];
		let mostRecEntry = res.data[0];
		for (const entry in res.data){
			if (res.data[entry]['id'] > maxId){
				maxId  = res.data[entry]['id'];
				mostRecEntry = res.data[entry];
			}
		}

		//pull the lat/lng info from the google maps api, so that the location can be marked on the map	
		$.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${mostRecEntry['addr']},${mostRecEntry['city']},${mostRecEntry['state']}&key=AIzaSyCUeZby2DFNDpmdijQONTq4yfhsDknpD3I`, loc_res =>{

			//sets up custom map icon to be green if the value is at or above .1 and black if less than .1
			let iconUrl = '';
			if (mostRecEntry['amount'] >= .1){
				iconUrl = '/static/img/darker_green_coin.png';
			}
			else{
				iconUrl = '/static/img/coin.png';
			}

			const marker = new google.maps.Marker({
				position: loc_res.results[0].geometry.location,
				title: mostRecEntry['loc'],
				map:coinMap,
				icon: {
					url: iconUrl,
					scaledSize: {
					width: 15,
					height: 15,
					},
				},
			})

			// Sets up a status variable to account for if the entry was missed or found money 
			let status = mostRecEntry['missed']
			if (status === true){
				status = 'Missed'
			}
			else if (status === false){
				status = 'Found'
			}
			//creates the information of the location name, status and amount to be displayed on the info window
			const markerInfo = `<h6>Last Location</h6>
								<p>${marker.title}</p>
								<p>${status} ${formatter.format(mostRecEntry['amount'])}</p>`;

			const infoWindow = new google.maps.InfoWindow({
			content:markerInfo,
			maxWidth:150,
			});

			//adds listener so that the infowindow will display when clicked
			marker.addListener('click', ()=>{
			infoWindow.open(coinMap, marker);
			});

			//center the map on the location of the most recent entry
			coinMap.setCenter(loc_res.results[0].geometry.location);
			coinMap.setZoom(6);
		})
	})
}
//end of map for coin page

