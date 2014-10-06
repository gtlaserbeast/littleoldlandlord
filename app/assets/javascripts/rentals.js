$(document).ready(function() {
var checkbox = document.getElementById('checkbox');
var rental_select = document.getElementById('rental_select');
var showHiddenDiv = function(){
   if(checkbox.checked) {
     rental_select.style['display'] = 'none';
   } else {
     rental_select.style['display'] = 'block';
   } 
}
checkbox.onclick = showHiddenDiv;
showHiddenDiv();
});