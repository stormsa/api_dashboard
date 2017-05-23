$(function () {
    var getData = function () {

        var schedules_url = 'https://api-ratp.pierre-grimaud.fr/v3/schedules/rers/b/arcueil+cachan/A';
        var traffic_url = 'https://api-ratp.pierre-grimaud.fr/v3/traffic/rers/b';

        $.when($.getJSON(schedules_url), $.getJSON(traffic_url)).done(function (schedules, traffic) {
            var date = new Date(),
                hours = date.getHours(),
                minutes = date.getMinutes(),
                current_time = (hours < 10 ? '0' + hours : hours) + ':' + (minutes < 10 ? '0' + minutes : minutes);

            var trafficResponse = traffic[0].result,
                scheduleResponse = schedules[0].result,
                scheduleResponseInformation = scheduleResponse;

            var data = {
                traffic: trafficResponse.message,
                line: 'B',
                type: 'rer',
                horaires: scheduleResponse.schedules,
                destination: scheduleResponseInformation.destination,
                station: 'Arcueil Cachan',
                current_time: current_time
            };

            $content.html(template(data));

        });
    };

    //getData();
    //setInterval(getData, 20000);
});
getLines();
function getLines(){
    var url = "https://api-ratp.pierre-grimaud.fr/v3/lines/metros";
    var  station, direction, code;
    var jqxhr = $.getJSON( url, function() {
        console.log("success")
    })
        .done(function(data) {
            $.each( data.result.metros, function( i, metro ) {
                if(i < 16){
                    station = metro.name;
                    direction = metro.directions;
                    code = metro.code;
                    $('#metro').append("<label class='radio-inline'><input type='radio' name='metro' value='"+code+"'><img src='/resources/img/ratp/metro/metro_"+code+".png'></label>");
                }
                });
        })
        .fail(function() {
            console.log( "error" );
        });
    jqxhr.complete(function() {

    });

}
function getTrafic() {
    var url = "https://api-ratp.pierre-grimaud.fr/v3/traffic";
    var  lineNumber, trafic, message;
    var jqxhr = $.getJSON( url, function() {
        console.log("success")
    })
        .done(function(data) {
            $.each( data.result.metros, function( i, line ) {
                lineNumber = line.line;
                trafic = line.message;
                $('#trafic').append("<li class='list-group-item'><img src='/resources/img/ratp/metro/metro_"+lineNumber.toLowerCase()+".png'> : "+trafic+"</li>");
            });
        })
        .fail(function() {
            console.log( "error" );
        });
    jqxhr.complete(function() {

    });
}
var code, way, station;
function getStations(code) {
    var url = "https://api-ratp.pierre-grimaud.fr/v3/stations/metros/"+code;
    var stationName;
    var jqxhr = $.getJSON( url, function() {
        console.log("success")
    })
        .done(function(data) {
            $.each( data.result.stations, function( i, stationJson ) {
                stationName = stationJson.name;
                if(i == 0){
                    station = stationName;
                }
                $('#stations').append($('<option>', {
                    value: stationName,
                    text: stationName
                }));
            });
        })
        .fail(function() {
            console.log( "error" );
        });
    jqxhr.complete(function() {

    });
}

function getHoraire(){
    var type = "metro";
    var url= "https://api-ratp.pierre-grimaud.fr/v3/schedules/metros/"+code+"/"+station+"/"+way;
    var jqxhr = $.getJSON( url, function() {
        console.log("success")
    })
        .done(function(data) {
            $.each( data.result.schedules, function( i, schedule ) {
                $('#horaires').append(`<div class='row'> 
                    <div class="col-md-8">${schedule.destination}</div>
                        <div class="col-md-3">
                            <span class='time'>${schedule.message}</span>
                        </div>
                    </div>`);
                //$('#horaires').append("<li class='list-group-item'>");
            });
        })
        .fail(function() {
            console.log( "error" );
        });
    jqxhr.complete(function() {

    });
}
function getDestination(code) {
    var url = "https://api-ratp.pierre-grimaud.fr/v3/destinations/metros/"+code;
    var destName;
    var jqxhr = $.getJSON( url, function() {
        console.log("success")
    })
        .done(function(data) {
            $.each( data.result.destinations, function( i, destination ) {
                destName = destination.name;
                if(i == 0){
                    way = destination.way;
                }
                $('#destinations').append($('<option>', {
                    value: way,
                    text: destName
                }));
            });
        })
        .fail(function() {
            console.log( "error" );
        });
    jqxhr.complete(function() {

    });

}

$("input[type=radio][name=metro]").on('change', function () {
    code = $("input[type=radio]:checked").val();
    $('#stations').html("");
    $('#destinations').html("");
    getStations(code);
    getDestination(code);
});

$(document).on('click', 'input[name="metro"]', function(event) {
    document.getElementById("choiceStation").style.display = "block";
    code = $('input[name=metro]:checked').val();
    $('#stations').html("");
    $('#destinations').html("");
    getStations(code);
    getDestination(code);
    $("#ligne").html("<img src='/resources/img/ratp/ligne/ligne_"+code+".png'>");
    getHoraire();
});
$('#stations').on('change', function () {
    station = this.value;
    $("#horaires").html("");
    getHoraire();
});

$('#destinations').on('change', function () {
    way = this.value;
    $("#horaires").html("");
    getHoraire();
});


