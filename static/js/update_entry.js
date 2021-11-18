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

function inBoundsEnd(dataLength, end){

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
		end = inBoundsEnd(Object.keys(res.data).length, end);
		start = startLess9(end);
		
		console.log(`start ${start}. end ${end}`);
		displayResults(res.data, start, end);

		$(function(){
			if (start === 0){
				$('#prev_entries').addClass('disabled');
			}
			else{
				$('#prev_entries').removeClass('disabled');
			}
		});


			if (end === Object.keys(res.data).length){
				$('#next_entries').addClass('disabled');
			}
			else{
				$('#next_entries').removeClass('disabled');
			}
	})

	$('#prev_entries').click((evt) =>{
		
		evt.preventDefault();
		$('#entry_info').empty();
	
		end -= 10

		end = inBoundsEnd(Object.keys(res.data).length, end);
		start = startLess9(end);
		
		console.log(`start ${start}. end ${end}`);
		displayResults(res.data, start, end);
		
	})


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