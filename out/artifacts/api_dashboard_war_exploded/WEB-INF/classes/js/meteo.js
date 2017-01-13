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