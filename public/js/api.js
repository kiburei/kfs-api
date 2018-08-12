var request = new XMLHttpRequest();

request.open('GET', 'http://http://nouveta.tech:3000/categories', true);
request.onload = function () {

  // Begin accessing JSON data here
  var data = JSON.parse(this.response);
  if (request.status >= 200 && request.status < 400) {
    console.log(data);
  } else {
    console.log('error');
  }
}

request.send();

// Get Total Earnings
  var request = new XMLHttpRequest();

  request.open('GET', 'http://http://nouveta.tech:3000/earnings', true);
  request.onload = function () {

    // Begin accessing JSON data here
    var data = JSON.parse(this.response);
    if (request.status >= 200 && request.status < 400) {
      document.getElementById("earnings").innerHTML = "Ksh." + data;
    } else {
      console.log('error');
    }
  }

  request.send();

// Vehicles Ferried
var request = new XMLHttpRequest();

request.open('GET', 'http://http://nouveta.tech:3000/payments', true);
request.onload = function () {

  // Begin accessing JSON data here
  var data = JSON.parse(this.response);
  if (request.status >= 200 && request.status < 400) {
    // loop through data and get totals for mpesa
      document.getElementById("vehicles").innerHTML = data.length;
  } else {
    console.log('error');
  }
}

request.send();


// Mpesa Collection
var request = new XMLHttpRequest();

request.open('GET', 'http://http://nouveta.tech:3000/payments', true);
request.onload = function () {

  // Begin accessing JSON data here
  var data = JSON.parse(this.response);
  if (request.status >= 200 && request.status < 400) {
    // loop through data and get totals for mpesa
    var sum = 0;
    for (var i = 0; i < data.length; i++) {
      if (data[i].channel == 'Mpesa') {
        sum += parseInt(data[i].amount_paid);
      }
    }
    console.log(sum);
    document.getElementById("mpesaSum").innerHTML = "Ksh." + sum;
  } else {
    console.log('error');
  }
}

request.send();

// Card Collection
var request = new XMLHttpRequest();

request.open('GET', 'http://http://nouveta.tech:3000/payments', true);
request.onload = function () {

  // Begin accessing JSON data here
  var data = JSON.parse(this.response);
  if (request.status >= 200 && request.status < 400) {
    // loop through data and get totals for mpesa
    var sum = 0;
    for (var i = 0; i < data.length; i++) {
      if (data[i].channel == 'Card') {
        sum += parseInt(data[i].amount_paid);
      }
    }
    console.log(sum);
    document.getElementById("cardSum").innerHTML = "Ksh." + sum;
  } else {
    console.log('error');
  }
}

request.send();


// Data Table
