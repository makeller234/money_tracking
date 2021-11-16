'use strict';

$.get('/all_addreses.json', res =>{

    for (const entry in res.data){
       
        let radioButton = $(`<input type="radio" name="entry_id" value="${res.data[entry].id}">
        <label>Location: ${res.data[entry].loc}
        Address: ${res.data[entry].addr} ${res.data[entry].city}, ${res.data[entry].state} ${res.data[entry].zip}
        Date: ${res.data[entry].date}
        Amount: ${res.data[entry].amount}
        Money Type: ${res.data[entry].money_type}
        Money Year: ${res.data[entry].money_year}
        Status: ${res.data[entry].missed}
        entry_id: ${res.data[entry].id}
    </label>`)
        radioButton.appendTo('#entry_info')
    };

})