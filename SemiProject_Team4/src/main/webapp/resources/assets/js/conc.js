const urlSearch = new URLSearchParams(location.search);
const conc = urlSearch.get('genre');
const locationSpan = document.querySelector("#conc")
locationSpan.innerText = conc