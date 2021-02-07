var nodoImmagine1;
var nodoImmagine2;
var nodoTesto1;
var nodoTesto2;

function gestoreLoad() { 
    try {
        
        nodoImmagine1 = document.getElementById("img1");
        nodoTesto1 = document.getElementById("lettera1"); 
        nodoImmagine2 = document.getElementById("img2");
        nodoTesto2 = document.getElementById("lettera2");

                nodoImmagine1.addEventListener("click", function gestoreClick() {
            try{
              nodoTesto1.style = "display: block";
              nodoTesto2.style = "display: none";
              nodoTesto1.scrollIntoView();
            } catch(e) {
                alert("gestoreClick: " + e);
            } 
        });    
        
        nodoImmagine2.addEventListener("click", function gestoreClick() {
            try{
              nodoTesto2.style = "display: block";
              nodoTesto1.style = "display: none";
              nodoTesto2.scrollIntoView();
            } catch(e) {
                alert("gestoreClick: " + e);
            } 
        });   

    } catch (e) {
        alert("gestoreLoad " +  e);
    }
}
  

  
window.onload=gestoreLoad;
