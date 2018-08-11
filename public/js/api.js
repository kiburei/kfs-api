var request = new XMLHttpRequest();

request.open('GET', 'http://nouveta.tech:3000/categories', true);
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
