<div class="map__content">
    <div id="googleMap" style="width:100%;height: calc(100%);"></div>
</div>
<script>
  function myMap() {
    var userCenter = new google.maps.LatLng(25.550013,-103.448013);

    var mapProp= {
      center: userCenter,
      zoom:15,
    };
    var mapDiv = document.getElementById("googleMap");
    var map = new google.maps.Map(mapDiv, mapProp);
    
    getRecollectorsData(map);
    
    var user_icon = '/RecycleMapApp/assets/images/user_map_marker.png'
    //placeMarker(userCenter,
    //            map,
    //            "Usuario1",
    //            user_icon);
    
  }
  
  function placeMarker(position, map, user, marker_icon) {
    var marker = new google.maps.Marker({
                      position: position,
                      map: map,
                      title: user.fullName,
                      icon: marker_icon
                    });
    google.maps.event.addListener(marker, 'click', ()=>{
      openInfoWindow(map, marker, user); 
    });
    return marker;
  }
  
  function openInfoWindow(map, marker, user) {
    console.log(user);
    return new google.maps.InfoWindow({
      content: "<div>\n\
                  <h3>"+user.fullName+"</h3>\n\
                  <div>\n\
                    <img src='/RecycleMapApp/assets/images/profile.png' alt='default_profile' width='150px'>\n\
                  </div>\n\
                  <div style='cursor:pointer;width: 100%;text-align: center;'>\n\
                    <span style='color:white;font-weight:bold;padding:15px 0;display:inline-block;width:100%;background-color:tomato;'>\n\
                      LLamar\n\
                    </span>\n\
                  </div>\n\
                </div>"
    }).open(map, marker);
  }
  function getRecollectorsData(map) {
      $.ajax({
        url: "/RecycleMapApp/map",
        data: {
            "action": "getRecollectorsData"
        },
        type: "GET",
        success: (data) => {
            data.map((user) => {
                var coordinates = new google.maps.LatLng(user.latitude,user.longitude);
                var recollector_icon = '/RecycleMapApp/assets/images/collector_map_marker.png';
                placeMarker(coordinates, map, user, recollector_icon);
            });
        },
        error: (error) => {
            console.log("error: ", error)
        }
      })
  }
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCg2yheuHYnZ42_UZFBBGQlpWo4YsomCY&callback=myMap"></script>
</body>