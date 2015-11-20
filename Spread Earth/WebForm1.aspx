<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="Spread_Earth.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1">Welcome to Spread Earth!</h1>
        <div>
<!DOCTYPE html>
            <p id="demo">
            </p>

<script>
var d = new Date();
document.getElementById("demo").innerHTML = d.toDateString();
</script>

        </div>
        <h2>&nbsp;</h2>
<!DOCTYPE html>
        <title>Spread Earth</title>
        <meta content="initial-scale=1.0, user-scalable=yes" name="viewport" />
        <style>

            #map-canvas {
            border: 15px solid #2E1C9D;
height: 82%;
            width: 87%;
                position: absolute;
                top: 82px;
                left: 106px;
            }
            
    
            .auto-style1 {
                color: #000099;
                text-decoration: underline;
                text-align: center;
                height: 20px;
            }
            .auto-style2 {
                font-size: large;
            }
            
    
            #demo {
                height: 12px;
                margin-left: 1136px;
            }
            
    
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&v=3.exp">  </script>
    <script>
        </style>
    
        <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&v=3.exp">  </script>
    <script>
 
 
 
        function initialize() {
            var mapOptions = {
                zoom: 2,
                minZoom: 2,
                center: {lat: 25, lng: 0},
                mapTypeId: google.maps.MapTypeId.HYBRID,
                backgroundColor: '#2E1C9D'
            };
  
            var map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);
   
            google.maps.event.addListener(map, 'rightclick', function(e) {
                placeMarker(e.latLng, map);
            });
  
            google.maps.event.addListener(map, 'center_changed', function() {
                checkBounds();
            });

            var allowedBounds = new google.maps.LatLngBounds(
              new google.maps.LatLng(-70.85200239592201, -179.66565397011107),
              new google.maps.LatLng(70.903255924231566, 179.57922246681517));

            function checkBounds() {
                if(allowedBounds.contains(map.getCenter())) {
                    return;
                }
                var mapCenter = map.getCenter();
                var X = mapCenter.lng();
                var Y = mapCenter.lat();

                var AmaxX = allowedBounds.getNorthEast().lng();
                var AmaxY = allowedBounds.getNorthEast().lat();
                var AminX = allowedBounds.getSouthWest().lng();
                var AminY = allowedBounds.getSouthWest().lat();
 
                if (Y < AminY) {Y = AminY;}
                if (Y > AmaxY) {Y = AmaxY;}
       
                map.setCenter(new google.maps.LatLng(Y,X));
            }
  
            var infowindow = new google.maps.InfoWindow();

            var polit = [];
            var sports = [];
            var music = [];
  
            var c4 = new google.maps.LatLng(31, 121);
            var m4 = new google.maps.Marker({
                position: c4,
                map: map,
                title: 'Shanghai'
            });
            polit.push(m4);
  
            google.maps.event.addListener(m4, 'click', function() {
                infowindow.setContent('<a href="http://online.barrons.com/articles/could-shanghai-stocks-sizzle-start-to-fizzle-1417770395" target="_blank">Shanghai</a>')
                infowindow.open(map,m4);
            });
  
  
            var c1 = new google.maps.LatLng(38.7489, -90.2890);
            var m1 = new google.maps.Marker({
                position: c1,
                map: map,
                title: 'Ferguson, MO'
            });
            polit.push(m1);
  
  
            google.maps.event.addListener(m1, 'click', function() {
                infowindow.setContent( '<a href="http://www.cnn.com/SPECIALS/us/ferguson-shooting-protests" target="_blank">Ferguson, MO</a>');
                infowindow.open(map,m1);
            });
  
            var c2 = new google.maps.LatLng(29.68, -82.32);
            var m2 = new google.maps.Marker({
                position: c2,
                map: map,
                title: 'Gainesville, FL',
                labelClass: "label"
            });
            polit.push(m2);
  
  
            google.maps.event.addListener(m2, 'click', function() {
                infowindow.setContent('<a href="http://sports.usatoday.com/2014/12/06/new-florida-coach-jim-mcelwain-confident-he-can-win-with-gators/" target="_blank"">Gaineville, FL</a>');
                infowindow.open(map,m2);
            });
  
            var c3 = new google.maps.LatLng(30.55, -84.22);
            var m3 = new google.maps.Marker({
                position: c3,
                map: map,
                title: 'Tallahassee, FL'
            });
            sports.push(m3);
  
            google.maps.event.addListener(m3, 'click', function() {
                infowindow.setContent( '<a href="http://www.tallahassee.com/story/news/local/2014/12/05/3-emergency-dispatchers-fired/19947495/" target="_blank"">Tallahassee, FL</a>');
                infowindow.open(map,m3);
            });
  
            var c5 = new google.maps.LatLng(34, -118);
            var m5 = new google.maps.Marker({
                position: c5,
                map: map,
                title: 'Los Angeles'
            });
            sports.push(m5);
  
  
  
            google.maps.event.addListener(m5, 'click', function() {
                infowindow.setContent( '<a href="http://www.usatoday.com/story/news/nation/2014/12/05/los-angeles-police-investigating-cosby-abuse-claim/19987015/" target="_blank">Los Angeles</a>');
                infowindow.open(map,m5);
            });
  
            var c6 = new google.maps.LatLng(-19, 29);
            var m6 = new google.maps.Marker({
                position: c6,
                map: map,
                title: 'Zimbabwe'
            });
            music.push(m6);
  
  
  
            google.maps.event.addListener(m6, 'click', function() {
                infowindow.setContent('<a href="http://www.bbc.com/news/world-africa-30363052" target="_blank" >Zimbabwe</a>');
                infowindow.open(map,m6);
            });
  
            var c7 = new google.maps.LatLng(55, 37);
            var m7 = new google.maps.Marker({
                position: c7,
                map: map,
                title: 'Moscow'
            });
            music.push(m7);
  
  
            google.maps.event.addListener(m7, 'click', function() {
                infowindow.setContent( '<a href="http://abcnews.go.com/International/wireStory/reports-french-leader-arrives-moscow-27410938" target="_blank">Moscow</a>');
                infowindow.open(map,m7);
            });
  
  
            var c8 = new google.maps.LatLng(38, -77);
            var m8 = new google.maps.Marker({
                position: c8,
                map: map,
                title: 'Washington DC'
            });
            music.push(m8);
  
  
            google.maps.event.addListener(m8, 'click', function() {
                infowindow.setContent( '<a href="http://www.huffingtonpost.com/2014/12/05/white-house-racial-profil_n_6279568.html" target="_blank">Washington DC</a>');
                infowindow.open(map,m8);
            });
  
  
            var c9 = new google.maps.LatLng(53, -2);
            var m9 = new google.maps.Marker({
                position: c9,
                map: map,
                title: 'Manchester City'
            });
            sports.push(m9);
  
  
            google.maps.event.addListener(m9, 'click', function() {
                infowindow.setContent('<a href="http://www.telegraph.co.uk/sport/football/teams/manchester-city/11277373/Manchester-Citys-new-150m-academy-The-English-Milan-Lab-from-which-they-aim-to-rule-Europe.html" target="_blank">Manchester City</a>');
                infowindow.open(map,m9);
            });

            google.maps.event.addDomListener(document.getElementById('politics'),
                    'click', function() {
                        if(document.getElementById('politics').checked){
                            for(var i = 0; i<polit.length; i++){
                                polit[i].setVisible(true);
                            }
                        }
                        else{
                            for(var i = 0; i<polit.length; i++){
                                polit[i].setVisible(false);
                            }
                        }
                    });

            google.maps.event.addDomListener(document.getElementById('sports'),
                'click', function() {
                    if(document.getElementById('sports').checked){
                        for(var i = 0; i<sports.length; i++){
                            sports[i].setVisible(true);
                        }
                    }
                    else{
                        for(var i = 0; i<sports.length; i++){
                            sports[i].setVisible(false);
                        }
                    }
                });

            google.maps.event.addDomListener(document.getElementById('science'),
               'click', function() {
                   if(document.getElementById('science').checked){
                       for(var i = 0; i<science.length; i++){
                           science[i].setVisible(true);
                       }
                   }
                   else{
                       for(var i = 0; i<science.length; i++){
                           science[i].setVisible(false);
                       }
                   }
               });

            google.maps.event.addDomListener(document.getElementById('funny'),
                        'click', function() {
                            if(document.getElementById('funny').checked){
                                for(var i = 0; i<funny.length; i++){
                                    funny[i].setVisible(true);
                                }
                            }
                            else{
                                for(var i = 0; i<funny.length; i++){
                                    funny[i].setVisible(false);
                                }
                            }
                        });

            google.maps.event.addDomListener(document.getElementById('music'),
                'click', function() {
                    if(document.getElementById('music').checked){
                        for(var i = 0; i<music.length; i++){
                            music[i].setVisible(true);
                        }
                    }
                    else{
                        for(var i = 0; i<music.length; i++){
                            music[i].setVisible(false);
                        }
                    }
                });
        }

        var markers = [];
 


        function showMarkers() {
            setAllMap(map);
        }

        function deleteMarkers() {
            clearMarkers();
            markers = [];
        }

        var post = new google.maps.InfoWindow({maxWidth:200});
        var marker = new google.maps.Marker({
            visible:false
        });
   
        function placeMarker(position, map) {
            marker.setPosition(position);
            marker.setMap(map);
            marker.setVisible();
            map.panTo(position);
            var html ='<form action="MAILTO:spreadearth@gmail.com?subject=SpreadEarth" method="post" enctype="multipart/form-data">'+
         '<b>'+'SpreadEarth'+'</b>'+ '<br>'+
         '<textarea rows="7" cols="22" placeholder="Insert Text" name="story">'+

         '</textarea>'+
         '<br>'+
           'Upload Image/Video:'+'<input type="file" name="file" ALLOW="text/*">'+'<br>'+
           '<input type="submit" name="Submit" value = "Submit">'+

         '</form>'
            ;
            
            post.setContent(html);
            post.open(map, marker);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
        <div>
            <div id="map-canvas">
            </div>
            <div>
                <input id="politics" checked="checked" class="auto-style2" type="checkbox" value="Politics" />
                <label>
                <span class="auto-style2">Politics<br />
                </span>
                </label>
&nbsp;<br class="auto-style2" />
                <input id="sports" checked="checked" class="auto-style2" type="checkbox" value="Sports" />
                <label>
                <span class="auto-style2">Sports<br />
                </span>
                <br class="auto-style2" />
                </label>
                <input id="science" checked="checked" class="auto-style2" type="checkbox" value="Science" />
                <label>
                <span class="auto-style2">Science<br />
                </span>
                </label>
&nbsp;<br class="auto-style2" />
                <input id="funny" checked="checked" class="auto-style2" type="checkbox" value="Funny" />
                <label>
                <span class="auto-style2">Funny</span></label>
                <br />
                <br class="auto-style2" />
                <input id="music" checked="checked" class="auto-style2" type="checkbox" value="Music" />
                <label>
                <span class="auto-style2">Music</span></label>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <p>
            &nbsp;</p>
    
    </div>
    </form>
</body>
</html>
