import L from "leaflet";

document.addEventListener("DOMContentLoaded", () => {
  if (document.getElementById("map")) {
    if (typeof mapData !== "undefined") {
      initializeMap(mapData);
    }
  }
});

function initializeMap(
  mapData,
  defaultCoordinates = [43.072657, -89.388112],
  zoomLevel = 5,
) {
  const map = L.map("map").setView(defaultCoordinates, zoomLevel);
  L.marker(defaultCoordinates).addTo(map);

  // Add OpenStreetMap tiles
  L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
    maxZoom: 19,
    attribution:
      '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
  }).addTo(map);

  // Use specific coordinates and zoom level for the index route, for example
  if (window.location.pathname === "/properties") {
    defaultCoordinates = [40.7128, -74.006]; // Example: New York City coordinates
    zoomLevel = 10;
  }

  if (window.location.pathname === "/") {
    mapData.forEach((property_unit) => {
      if (property_unit.latitude && property_unit.longitude) {
        L.marker([property_unit.latitude, property_unit.longitude]).addTo(map);
      }
    });
  }

  if (window.location.pathname.includes("properties")) {
    L.marker([mapData.latitude, mapData.longitude]).addTo(map);
    map.setView([mapData.latitude, mapData.longitude], 13);
  }
}
