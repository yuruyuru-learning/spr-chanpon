

$("#a").click(e => {
  $.ajax("/choose/a" , {
  	type: "POST",
  	data: {},
  	datatype: "json"
  }).done ( response => {
    location.href = "/wait"
  }).fail (e => {
    console.log("fail")
  })
})

$("#b").click(e => {
  $.ajax("/choose/b" , {
  	type: "POST",
  	data: {},
  	datatype: "json"
  }).done ( response => {
    location.href = "/wait"
  }).fail (e => {
    console.log("fail")
  })
})