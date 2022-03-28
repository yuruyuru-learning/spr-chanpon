

$("#nextRound").click(e => {
  $.ajax("/nextRound" , {
  	type: "POST",
  	data: {},
  	datatype: "json"
  }).done ( response => {
    console.log(parseInt(response["round"]))
    location.href = "/round"
  }).fail (e => {
    console.log("fail")
  })
})