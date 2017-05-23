
$(document).ready(function(){
    var latLng = new google.maps.LatLng(48.866667, 2.333333); // Correspond au coordonnées de Paris
    var map;
    var panel;
    var initialize;
    var directionsService
    var calculate;
    var direction;
    var compt = 0;
    var depart, transit, arrivee, nom;
    var myOptions = {
        zoom      : 12, // Zoom par défaut
        center    : latLng, // Coordonnées de départ de la carte de type latLng
        mapTypeId : google.maps.MapTypeId.TERRAIN, // Type de carte, différentes valeurs possible HYBRID, ROADMAP, SATELLITE, TERRAIN
        maxZoom   : 20
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
            getAutolib();
        });
    }
    var markers = [];
    function getAutolib(){
        var url = "https://opendata.paris.fr/api/records/1.0/search/?dataset=stations_et_espaces_autolib_de_la_metropole_parisienne&rows=100&facet=ville&facet=cp&facet=type";
        var  latlng, myLatLng, address, prises;
        var jqxhr = $.getJSON( url, function() {
            console.log("success")
        })
            .done(function(data) {
                $.each( data.records, function( i, record ) {
                    latlng = record.fields.xy;
                    address = record.fields.adresse;
                    prises = record.fields.prises_autolib;
                    if(latlng != null){
                        myLatLng = {lat: latlng[0], lng: latlng[1]};
                        var box = "<p> Adresse : "+address+"</p>";
                        box += "<p>Nombre de prises : "+prises+"</p>";
                        var infowindow = new google.maps.InfoWindow({
                            content: box
                        });

                        var marker = new google.maps.Marker({
                            position: myLatLng,
                            icon: "/resources/img/autolib.png",
                            animation: google.maps.Animation.DROP,
                            title:record.fields.id_autolib
                        });
                        marker.addListener('click', function() {
                            infowindow.open(map, marker);
                        });

                        marker.setMap(map);
                    }
                });
            })
            .fail(function() {
                console.log( "error" );
            });
        jqxhr.complete(function() {

        });

    }
});
 