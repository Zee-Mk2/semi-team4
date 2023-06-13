const urlSearch = new URLSearchParams(location.search);
const camp = urlSearch.get('location');
const locationSpan = document.querySelector("#camp")
locationSpan.innerText = camp
