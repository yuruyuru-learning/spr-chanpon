
function choose(name) {
  $.ajax("/choose_group/" + name , {
  	type: "POST",
  	data: {},
  	datatype: "json"
  }).done ( response => {
    location.href = "/wait"
  }).fail (e => {
    console.log("fail")
  })
}

$("#aruga").click(e => {
  choose("aruga")
})
$("#una").click(e => {
  choose("una")
})
$("#yuruyuru").click(e => {
  choose("yuruyuru")
})
$("#michan").click(e => {
  choose("michan")
})
$("#emily").click(e => {
  choose("emily")
})
$("#igaryo").click(e => {
  choose("igaryo")
})
$("#lemon").click(e => {
  choose("lemon")
})
$("#chanpon").click(e => {
  choose("chanpon")
})
$("#rokuura").click(e => {
  choose("rokuura")
})






