'use strict';

const markers = [];
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
		let res_data = res.data;
		let grouped_by_address = {}
		const res_data_filtered = [];
		const year = $('#year').html();
		const money_status = $('#missed').html();

		//sets up conditions to check for what the user indicates and then uses the _.groupBy to 
		// add to the dictionary the key of the address and the value of the information on each money item for that address
		if (year === 'All' && money_status === 'Missed and Found Money'){
				//res_data = res_data

				grouped_by_address = _.groupBy(res_data, function(address){
						return address.addr
				})

		}
		else if (year === 'All' && money_status === 'Missed Money'){
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
		else if (year === 'All' && money_status === 'Found Money'){
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

		else if (year !== 'All' && money_status === 'Missed and Found Money'){
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
		else if (year !== 'All' && money_status === 'Missed Money'){
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
		else if (year !== 'All' && money_status === 'Found Money'){
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

		//loop over the keys and values of the grouped address object.
		for (const [key, value] of Object.entries(grouped_by_address)) {

			
			//set condition for if there isn't an address, so that those entries can be skipped and won't appear on the map
			if (key !== 'null'){
					// assign the necessary values that are needed by the google maps API
					let addr = grouped_by_address[key][0]['addr'];
					let city = grouped_by_address[key][0]['city'];
					let state = grouped_by_address[key][0]['state'];

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
							
									const marker = new google.maps.Marker({
									position: loc_res['results'][0]['geometry']['location'],
									title: locName,
									map:map,
									//custom icon of a coin
									icon: {
											url: '/static/img/coin.png',
											scaledSize: {
											width: 15,
											height: 15,
											},
									},
									})
									//add information to the info window to display the location name, money status (missed/found or both), and amount
									const markerInfo = `<h6>${marker.title}</h6>
																					<p>Total ${money_status} at this location: ${formatter.format(amount)}</p>`;

									const infoWindow = new google.maps.InfoWindow({
											content:markerInfo,
											maxWidth:150,
									});

									// add a listner so that the infowindow shows up when the marker is clicked
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
	//creates a new google map for the coin page
	let coinMap = new google.maps.Map(document.querySelector("#coinMap"), {
			zoom: 4,
			center: {'lat': 37.0902, 'lng': -95.7129}
	});

	$.get('/all_addresses.json', res =>{

		//gets the address from the all_addresses route and assigns the first one as the value of max_id
		// this will be used to loop through the list of addresses to find the one with the max id as this is the last entry
		// and will be used as the location for the marker on the map
		let max_id = res.data[0]['id'];
		let most_rec_entry = res.data[0];
		for (const entry in res.data){
				if (res.data[entry]['id'] > max_id){
						max_id  = res.data[entry]['id'];
						most_rec_entry = res.data[entry];
				}
		}
		//pull the lat/lng info from the google maps api, so that the location can be marked on the map	
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

			// Sets up a status variable to account for if the entry was missed or found money 
			let status = most_rec_entry['missed']
			if (status === true){
					status = 'Missed'
			}
			else if (status === false){
					status = 'Found'
			}
			//creates the information of the location name, status and amount to be displayed on the info window
			const markerInfo = `<h6>Last Location</h6>
													<p>${marker.title}</p>
													<p>${status} ${formatter.format(most_rec_entry['amount'])}</p>`;

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

