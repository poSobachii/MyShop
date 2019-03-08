
function testJS() {
     alert("JS loaded")
        };

 function add_to_basket(tempo1, tempo2, tempo3){
  var http = new XMLHttpRequest();
  http.open("POST", "http://localhost:8080/addBasketResponse.jsp", true);
  http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
  http.send("param1=" + tempo1 + "&param2=" + tempo2 + "&param3=" + tempo3);
  http.onload = function() {
  alert(http.responseText);
  }
  };


