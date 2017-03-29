/**
 * Created by Vinh on 11/01/2017.
 */
function changeVille() {
    var ville = $(".chosen").val();
    var url = 'http://api.openweathermap.org/data/2.5/weather?q='+ville+',fr&appid=66c5a4a7889ec64b4baf8f8af653e7e9&units=metric';
    $("#ville").html(ville);

    $.getJSON(url, function (json) {
        $("#temperature").html(json.main.temp + " °C");
        $("#humidite").html("Humidite "+json.main.humidity + " %");
        var speed = json.wind.speed / 1000 * 3600;
        $("#vent").html("Vent "+speed.toFixed(2)+ " km/h");
        var src = "http://openweathermap.org/img/w/"+json.weather[0].icon+".png";
        $("#image").attr("src", src);
        $("#long").html(json.coord.lon);
        $("#lat").html(json.coord.lat);

        /* json.coord.lon
         json.coord.lat*/
    });
}
function maPosition(position) {
    var infopos = "Position déterminée :\n";
    infopos += "Latitude : "+position.coords.latitude +"\n";
    infopos += "Longitude: "+position.coords.longitude+"\n";
    infopos += "Altitude : "+position.coords.altitude +"\n";
    document.getElementById("infoposition").innerHTML = infopos;
}
var geocoder;

function initialize() {
    geocoder = new google.maps.Geocoder();
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(successFunction, errorFunction);
    }
}

//Get the latitude and the longitude;
function successFunction(position) {
    var lat = position.coords.latitude;
    var lng = position.coords.longitude;
    codeLatLng(lat, lng)
}

function errorFunction(){
    alert("Geocoder failed");
}

function codeLatLng(lat, lng) {
    var latlng = new google.maps.LatLng(lat, lng);
    geocoder.geocode({'latLng': latlng}, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            console.log(results)
            if (results[1]) {
                //formatted address
                //alert(results[0].formatted_address)
                //find country name
                for (var i=0; i<results[0].address_components.length; i++) {
                    for (var b=0;b<results[0].address_components[i].types.length;b++) {

                        //there are different types that might hold a city admin_area_lvl_1 usually does in come cases looking for sublocality type will be more appropriate
                        if (results[0].address_components[i].types[b] == "administrative_area_level_1") {
                            //this is the object you are looking for
                            city= results[0].address_components[i];
                            break;
                        }
                    }
                }
                //city data
                $('#dropdownCity').append($('<option>', {
                    value: city.short_name,
                    text: city.short_name
                })).val(city.short_name);
                initMeteo(city.short_name);

            } else {
                alert("No results found");
            }
        } else {
            alert("Geocoder failed due to: " + status);
        }
    });
}
initialize();
function initMeteo(ville){
    var url = 'http://api.openweathermap.org/data/2.5/weather?q='+ville+',fr&appid=66c5a4a7889ec64b4baf8f8af653e7e9&units=metric';
    $("#ville").html(ville);

    $.getJSON(url, function (json) {
        $("#temperature").html(json.main.temp + " °C");
        $("#humidite").html("Humidite "+json.main.humidity + " %");
        var speed = json.wind.speed / 1000 * 3600;
        $("#vent").html("Vent "+speed.toFixed(2)+ " km/h");
        var src = "http://openweathermap.org/img/w/"+json.weather[0].icon+".png";
        $("#image").attr("src", src);
        $("#long").html(json.coord.lon);
        $("#lat").html(json.coord.lat);

        /* json.coord.lon
         json.coord.lat*/
    });
}
