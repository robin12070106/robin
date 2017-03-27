/**
 * 
 */
window.addEventListener("load",function(){
	// Get the modal
	var starModal = document.getElementById('star-Modal');
	
	// Get the button that opens the modal
	var starBtn = document.getElementById("star-Btn");
	
	// Get the <span> element that closes the modal
	var spanStar = document.getElementsByClassName("close")[0];
	
	// When the user clicks the button, open the modal 
	starBtn.onclick = function() {
		starModal.style.display = "block";
	};
	
	// When the user clicks on <span> (x), close the modal
	spanStar.onclick = function() {
		starModal.style.display = "none";
	};
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == starModal) {
	    	starModal.style.display = "none";
	    };
	};
	
});

window.addEventListener("load",function(){
	// Get the modal
	var mapModal = document.getElementById('map-Modal');
	
	// Get the button that opens the modal
	var mapBtn = document.getElementById("map-Btn");
	
	// Get the <span> element that closes the modal
	var spanMap = document.getElementsByClassName("close")[1];
	
	// When the user clicks the button, open the modal 
	mapBtn.onclick = function() {
		mapModal.style.display = "block";
	};
	
	// When the user clicks on <span> (x), close the modal
	spanMap.onclick = function() {
		mapModal.style.display = "none";
	};
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == mapModal) {
	    	mapModal.style.display = "none";
	    };
	};
	
});

window.addEventListener("load",function(){
	// Get the modal
	var pieModal = document.getElementById('pie-Modal');
	
	// Get the button that opens the modal
	var pieBtn = document.getElementById("pie-Btn");
	
	// Get the <span> element that closes the modal
	var spanPie = document.getElementsByClassName("close")[2];
	
	// When the user clicks the button, open the modal 
	pieBtn.onclick = function() {
		pieModal.style.display = "block";
	};
	
	// When the user clicks on <span> (x), close the modal
	spanPie.onclick = function() {
		pieModal.style.display = "none";
	};
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == pieModal) {
	    	pieModal.style.display = "none";
	    };
	};
	
});	


