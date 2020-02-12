
console.log("called")
function calculate_total_cost(){
  total_cost = 0
  // $(".pro-quantity").forEach(function(pro){
  //   total_cost = total_cost + $(pro).next().val()
  // })
  pro_quantity = $(".pro-quantity")
  for(var i=0; i< pro_quantity.length; i++ ){
    quantity = parseInt($(pro_quantity[i]).val())
    no_of_pro = parseInt($(pro_quantity[i]).parents('tr').find('.per-unit-price').val())
    total_cost = total_cost + (quantity * no_of_pro)
  }
  $('#invoice_total_cost').val(total_cost)
}

$('document').ready(function(){
  $(".pro-quantity").on('change', function(){
     calculate_total_cost()
  })
})