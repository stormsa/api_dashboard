/**
 * Created by Vinh on 16/05/2017.
 */
$(document).ready(function () {
    var url = "https://api.themoviedb.org/3/discover/movie?api_key=60e003b603602721084094856b49b792&language=fr";
    $.getJSON(url, function (json) {
        loadFilm(json)
    });

    /--------------/

    url = "https://api.themoviedb.org/3/genre/movie/list?api_key=60e003b603602721084094856b49b792&language=fr";
    $.getJSON(url, function (json) {

        results = json.genres;
        s= "";

        for(var cpt in results){
            i = results[cpt]
            s += "<option value='"+i.id+"'>"+i.name+"</option>";

        }
        $(".genre").append(s);
    });

    /--------------/
    $(".genre").change(function () {
        var val = $(this).val();
        url = "https://api.themoviedb.org/3/discover/movie?api_key=60e003b603602721084094856b49b792&language=fr&without_genres="+val;
        $.getJSON(url, function (json) {
            loadFilm(json)
        });
    })
})

function changeDateFormat(inputDate){  // expects Y-m-d
    var splitDate = inputDate.split('-');
    if(splitDate.count == 0){
        return null;
    }

    var year = splitDate[0];
    var month = splitDate[1];
    var day = splitDate[2];

    return day + '-' + month + '-' + year;
}

function loadFilm(json){
    var results = json.results;
    var s= "";
    for(var cpt in results){
        var i = results[cpt]
        s += "<li>" +
            "<div class='item-total'>"+
            "<div class='item-img'>" +
            "<img src='https://image.tmdb.org/t/p/w500"+i.poster_path+"'>" +
            "</div>"+
            "<div class='item-info'>" +
            "<p class='title'>"+i.title+"</p>" +
            "<p class='overview'>Date sortie : "+changeDateFormat(i.release_date)+"</p>" +
            "<p class='overview'>"+i.overview+"</p>" +

            "</div>" +
            "</div>"+
            "</li>"
    }
    $(".list-film").empty();
    $(".list-film").append(s);

}