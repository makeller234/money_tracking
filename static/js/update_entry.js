'use strict';

function displayResults(data,start,end){
	//Function for the radio buttons of the update entry form.
	//Displays only 10 entries at a time, except on the last page, then it only displays
	//however many results are left.

	for(start; start <= end; start++){
	
		let date = new Date(data[start].date)
		let status = '';

		if (data[start].missed == false){
			status = 'found';
		}
		else{
			status = 'missed';
		}
		let radioButton = $(`<div class="row"><div class="col-12 d-inline-flex align-items-baseline"><input class="mr-2" type="radio" name="entry_id" value="${data[start].id}">
		<label>${data[start].money_type} ${status} at ${data[start].loc} (${data[start].addr}) on ${date.toLocaleDateString()}
		</label></div></div>`)

	radioButton.appendTo('#entry_info')
	}
}


function startBound(start){
	//Function that stops the start variable from being less than 0, since we don't want it to be less than 0.
	if (start < 0){
		start = 0;
	}
	return start;
}

function endBound(dataLength, start){
	//Function to set up the end value to always be 9 more than start, but never more than the length of the data
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
	//Reads in the data and then displays the entries.  Updates the start and end counts.
	//Disables the previous button if start = 0 and disables the next button if end = data length

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