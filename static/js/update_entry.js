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
		</label> <br>`)
	radioButton.appendTo('#entry_info')
	}
}


function startBound(start){
	if (start < 0){
		start = 0;
	}
	return start;
}

function endBound(dataLength, start){
	let end = start + 9;
	if (end > dataLength){
		end = dataLength
	}
	else if (end < 9){
		end = 9
	}
	return end;
}
$.get('/all_addresses.json', res =>{

	let start = 0
	let end = endBound(Object.keys(res.data).length, start)
	
	displayResults(res.data, start, end);
	console.log(`start ${start}. end ${end}`);

	$('#next_entries').click((evt) => {
		
		evt.preventDefault();
		$('#entry_info').empty();


		start += 10;
		end = endBound(Object.keys(res.data).length, start)

		if (end !== Object.keys(res.data).length){
			$('#next_entries').removeAttr('disabled');
		}
		if (end === Object.keys(res.data).length){
			$('#next_entries').attr('disabled', 'disabled');
		}
		if (start !==0){
			$('#prev_entries').removeAttr('disabled');
		}
		if (start === 0){
			$('#prev_entries').attr('disabled', 'disabled');
		}
		
		console.log(`start ${start}. end ${end}`);
		displayResults(res.data, start, end);

	})

	$('#prev_entries').click((evt) =>{
		
		evt.preventDefault();
		$('#entry_info').empty();
	
		start -= 10;
		end = endBound(Object.keys(res.data).length, start)

		if (end !== Object.keys(res.data).length){
			$('#next_entries').removeAttr('disabled');
		}
		if (end === Object.keys(res.data).length){
			$('#next_entries').attr('disabled', 'disabled');
		}
		if (start !==0){
			$('#prev_entries').removeAttr('disabled');
		}
		if (start === 0){
			$('#prev_entries').attr('disabled', 'disabled');
		}
	
		console.log(`start ${start}. end ${end}`);
		displayResults(res.data, start, end);
		
	})





})