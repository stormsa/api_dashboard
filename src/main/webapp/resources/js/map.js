var map;
var panel;
var initialize;
var directionsService;
var calculate;
var direction;
var compt = 0;
var depart, transit, arrivee, nom;
function initMap(){
    var latLng = new google.maps.LatLng(48.866667, 2.333333); // Correspond au coordonnées de Paris
    var myOptions = {
        zoom: 12, // Zoom par défaut
        center: latLng, // Coordonnées de départ de la carte de type latLng
        mapTypeId: google.maps.MapTypeId.TERRAIN, // Type de carte, différentes valeurs possible HYBRID, ROADMAP, SATELLITE, TERRAIN
        maxZoom: 20
    };

    directionsService = new google.maps.DirectionsService();
    map = new google.maps.Map(document.getElementById('map'), myOptions);
    direction = new google.maps.DirectionsRenderer({
        map   : map,
        panel : panel
    });

    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            initialLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
            map.setCenter(initialLocation);
        });
    }
    initAutocomplete();
}

var markers = [];

function getDirection(){
    var start = document.getElementById('departure').value;
    var end = document.getElementById('arrival').value;
    var request = {
        origin: start,
        destination: end,
        travelMode: 'TRANSIT'
    };
    directionsService.route(request, function(result, status) {
        if (status == google.maps.DirectionsStatus.OK) {
            direction.setDirections(result);
        }
    });
    direction.setPanel(document.getElementById("map-panel"));
}
 $("#calcIti").click(function () {
     getDirection();
 });

 var placeSearch, autoDeparture, autoArrival;
 var componentForm = {
     street_number: 'short_name',
     route: 'long_name',
     locality: 'long_name',
     administrative_area_level_1: 'short_name',
     country: 'long_name',
     postal_code: 'short_name'
 };

 function initAutocomplete() {
     // Create the autocomplete object, restricting the search to geographical
     // location types.
     var arrival = document.getElementById('arrival');
     var departure = document.getElementById('departure');
     autoDeparture = new google.maps.places.Autocomplete(
         /** @type {!HTMLInputElement} */(departure),
         {types: ['geocode']});

     // When the user selects an address from the dropdown, populate the address
     // fields in the form.
     autoDeparture.addListener('departure_changed', function(){
         fillInAddress(autoDeparture, departure); });

     autoArrival = new google.maps.places.Autocomplete(
         /** @type {!HTMLInputElement} */(arrival),
         {types: ['geocode']});

     // When the user selects an address from the dropdown, populate the address
     // fields in the form.
     autoArrival.addListener('arrival_changed', function(){
        fillInAddress(autoArrival, arrival); });
 }
 function fillInAddress(autocomplete, autocompleteInput) {
     // Get the place details from the autocomplete object.
     var place = autocomplete.getPlace();
    /*
     for (var component in componentForm) {
         document.getElementById(component).value = '';
         document.getElementById(component).disabled = false;
     }
     */

     // Get each component of the address from the place details
     // and fill the corresponding field on the form.
     for (var i = 0; i < place.address_components.length; i++) {
         //var addressType = place.address_components[i].types[0];
         var addressType = autocompleteInput;
         if (componentForm[addressType]) {
             var val = place.address_components[i][componentForm[addressType]];
             document.getElementById(addressType).value += val;
         }
     }
 }
 function geolocate() {
     if (navigator.geolocation) {
         navigator.geolocation.getCurrentPosition(function(position) {
             var geolocation = {
                 lat: position.coords.latitude,
                 lng: position.coords.longitude
             };
             var circle = new google.maps.Circle({
                 center: geolocation,
                 radius: position.coords.accuracy
             });
             autoDeparture.setBounds(circle.getBounds());
         });
     }
 }

 