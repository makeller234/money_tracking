'use strict';

function displayResults(data,start,end){

	for(start; start <= end; start++){
	
		let date = new Date(data[start].date)
		let radioButton = $(`<input type="radio" name="entry_id" value="${data[start].id}">
		<label>Location: ${data[start].loc}
		Address: ${data[start].addr} ${data[start].city}, ${data[start].state} ${data[start].zip}
		Date: ${date.toLocaleDateString()}
		Amount: ${data[start].amount}
		Money Type: ${data[start].money_type}
		Money Year: ${data[start].money_year}
		Status: ${data[start].missed}
		entry_id: ${data[start].id}
		</label>`)
	radioButton.appendTo('#entry_info')
	}
}

function inBoundsStart(start){
	if ((start -10) < 0){
		start = 0;
	}

	return start;
}

function inBoundsEnd(dataLength, end){
	// if (((end+10) > dataLength) && ((end-start) > 10)) {
	// 	end = start + 9;
	// }
	// else if (((end+10) > dataLength) && ((end-start) < 10)){
	// 	end = dataLength;
	// }
	if (end > dataLength){
		end = dataLength;
	}
	else if (end < 9){
		end = 9;
	}
	return end;
}

function startLess9(num){
	if ((num-9) < 0){
		return 0;
	}
	
	return num-9;
}


$.get('/all_addreses.json', res =>{
	
	let end = 9;
	let start = startLess9(end);
	
	displayResults(res.data, start, end);
	console.log(`start ${start}. end ${end}`);

	$('#next_entries').click((evt) => {
		
		evt.preventDefault();
		$('#entry_info').empty();
		

		end += 10;
		// start = inBoundsStart(start);
		// console.log(start);
		// console.log(end);
		end = inBoundsEnd(Object.keys(res.data).length, end);
		start = startLess9(end);
		
		console.log(`start ${start}. end ${end}`);
		displayResults(res.data, start, end);
		
	})

	$('#prev_entries').click((evt) =>{
		
		evt.preventDefault();
		$('#entry_info').empty();
	
		end -= 10

		// start = inBoundsStart(start);
		end = inBoundsEnd(Object.keys(res.data).length, end);
		start = startLess9(end);
		
		console.log(`start ${start}. end ${end}`);
		displayResults(res.data, start, end);
		
	})
	// for(start; start <= end; start++){
	
	// 	let date = new Date(res.data[start].date)
		
	// 	let radioButton = $(`<input type="radio" name="entry_id" value="${res.data[start].id}">
	// 		<label>Location: ${res.data[start].loc}
	// 		Address: ${res.data[start].addr} ${res.data[start].city}, ${res.data[start].state} ${res.data[start].zip}
	// 		Date: ${date.toLocaleDateString()}
	// 		Amount: ${res.data[start].amount}
	// 		Money Type: ${res.data[start].money_type}
	// 		Money Year: ${res.data[start].money_year}
	// 		Status: ${res.data[start].missed}
	// 		entry_id: ${res.data[start].id}
	// 		</label>`)
	// 	radioButton.appendTo('#entry_info')
	// }

	// // next entries button
	// $('#next_entries').click((evt) => {
	// 	evt.preventDefault();
	// 	$('#entry_info').empty();
	// 	end+=10;

	// 	for(start; start <= end; start++){
	
	// 	let date = new Date(res.data[start].date)
	// 	'<div id="entry_info"></div>'
	// 	let radioButton = $(`<input type="radio" name="entry_id" value="${res.data[start].id}">
	// 		<label>Location: ${res.data[start].loc}
	// 		Address: ${res.data[start].addr} ${res.data[start].city}, ${res.data[start].state} ${res.data[start].zip}
	// 		Date: ${date.toLocaleDateString()}
	// 		Amount: ${res.data[start].amount}
	// 		Money Type: ${res.data[start].money_type}
	// 		Money Year: ${res.data[start].money_year}
	// 		Status: ${res.data[start].missed}
	// 		entry_id: ${res.data[start].id}
	// 		</label>`)
	// 	radioButton.appendTo('#entry_info')
	// }
	// })

	// // prev entries button
	// $('#prev_entries').click((evt) => {
	// 	evt.preventDefault();
	// 	$('#entry_info').empty();
	// 	start-=10;
	// 	end-=10;
	// 	'<div id="entry_info"></div>'
	// 	for(start; start <= end; start++){
	
	// 		let date = new Date(res.data[start].date)
			
	// 		let radioButton = $(`<input type="radio" name="entry_id" value="${res.data[start].id}">
	// 			<label>Location: ${res.data[start].loc}
	// 			Address: ${res.data[start].addr} ${res.data[start].city}, ${res.data[start].state} ${res.data[start].zip}
	// 			Date: ${date.toLocaleDateString()}
	// 			Amount: ${res.data[start].amount}
	// 			Money Type: ${res.data[start].money_type}
	// 			Money Year: ${res.data[start].money_year}
	// 			Status: ${res.data[start].missed}
	// 			entry_id: ${res.data[start].id}
	// 			</label>`)
	// 		radioButton.appendTo('#entry_info')
	// 	}

	// })

	// //original code
	// for (const entry in res.data){
	// 		let date = new Date(res.data[entry].date)
			
	// 		let radioButton = $(`<input type="radio" name="entry_id" value="${res.data[entry].id}">
	// 			<label>Location: ${res.data[entry].loc}
	// 			Address: ${res.data[entry].addr} ${res.data[entry].city}, ${res.data[entry].state} ${res.data[entry].zip}
	// 			Date: ${date.toLocaleDateString()}
	// 			Amount: ${res.data[entry].amount}
	// 			Money Type: ${res.data[entry].money_type}
	// 			Money Year: ${res.data[entry].money_year}
	// 			Status: ${res.data[entry].missed}
	// 			entry_id: ${res.data[entry].id}
	// 			</label>`)
	// 		radioButton.appendTo('#entry_info')
	// };

})