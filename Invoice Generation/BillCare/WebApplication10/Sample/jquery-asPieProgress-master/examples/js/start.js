$(document).ready(function() {
	//alert("jQuery ENABLED");

setTimeout(startTheGame, 5000);
/*
setTimeout(goToFifty, 10000);
setTimeout(goToFifty2, 15000);
setTimeout(goToFiftyPercent, 20000);
setTimeout(goToFiftyPercent2, 25000);

startTheGame();
*/
function startTheGame(){
$('.pie_progress').asPieProgress('start');


}

function goToFifty(){

$('.pie_progress').asPieProgress('go',45);



}

function goToFifty2(){

$('.pie_progress').asPieProgress('go',55);



}

function goToFiftyPercent2(){

$('.pie_progress').asPieProgress('go', '95%');



}

function goToFiftyPercent(){

$('.pie_progress').asPieProgress('go', '75%');



}


});