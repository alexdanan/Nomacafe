import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10',
    zoom: 5
    //choose your style   or design your own
  });
};

const makeMarkerClickable = (markers) => {
  const markerElement = marker.getElement(); // this gets the marker element. console.log it to see!
  // add a nice link to go to
  const linkToGo = "google.com";
  // wrap the marker element in a <a> tag
  markerElement.innerHTML = `
    <a class='add-some-style' href='${linkToGo}'>
        ${markerElement.innerHTML}
    </a>`;
}


const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup=new mapboxgl.Popup().setHTML(marker.info_window);
    // marker.getElement().addEventListener('click', event => {
    // window.location.href = 'https://www.mapbox.com/';
    // });

    // Create a HTML element for your custom marker
    const element= document.createElement('div');
    element.className= 'marker';
    element.style.backgroundImage= `url('${marker.image_url}')`;
    element.style.backgroundSize= 'contain';
    element.style.width= '25px';
    element.style.height= '25px';
    // element.href = `${link}`

    new mapboxgl.Marker(element) //only pass the element variable if you styled your markers(const above)- otherwise keep blank
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
      // makeMarkerClickable(marker);
  });

};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, {
    padding: 70,
    maxZoom: 15,
    duration: 2800
  });
};


const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) { // only build a map if there's a div#map to inject into
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    //only add if you want search bar:
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));
    map.addControl(new mapboxgl.GeolocateControl({ positionOptions: {enableHighAccuracy: true}, trackUserLocation: true}));
    // call your functions:
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
