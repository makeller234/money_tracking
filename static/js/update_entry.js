'use strict';

function displayResults(data,start,end){

	for(start; start <= end; start++){
	
		let date = new Date(data[start].date)

		let status = '';
		if (data[start].missed == false){
			status = 'found';
		}
		else{
			status = 'missed';
		}
		let radioButton = $(`<input type="radio" name="entry_id" value="${data[start].id}">
		<label>${data[start].money_type} ${status} at ${data[start].loc} (${data[start].addr}) on ${date.toLocaleDateString()}
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
//$.get('/search_entries', res =>{
	//console.log(res.data);


	let start = 0
	let end = endBound(Object.keys(res.data).length, start)
	
	displayResults(res.data, start, end);

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
	
		displayResults(res.data, start, end);	
	})
})