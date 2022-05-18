<script>

  window.onload = formatEndDate()
  function formatEndDate(){
    var endDate = document.getElementById("endDate")
    if(endDate.textContent.includes("Current") && endDate.className == "w3-text-teal" ) {
      $("#endDate").toggleClass("w3-tag w3-teal w3-round w3-text-teal")
    }
    else{
      
    }
    
    
  }


</script>