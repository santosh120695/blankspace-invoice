$('document').ready(function(){
  $(".product-select").on('change', function(e){
      product_selected = $(this).val()
      price = localStorage.getItem(product_selected)
      $(this).parents('tr').find('.per-unit-price').val(price)
      calculate_cost()
  })

  $(".pro-quantity").on('change', function(){
      calculate_cost()
  })
})

function calculate_cost(){
  trs = $("#sold-products").find("tr")
  total_cost = 0
  for(var i=0; i< trs.length; i++ ){
    quantity = $(trs[i]).find('.pro-quantity').val()
    price = $(trs[i]).find('.per-unit-price').val()
    console.log(quantity)
    console.log(price)
    if(quantity && price){
      total_cost += quantity * price
    }
  }
  console.log(total_cost)
  $("#invoice_total_cost").val(total_cost)
}




function fetch_all_products() {
  $.ajax({
    url: '/products.json',
    method: 'GET',
    success: function(response){
      response.forEach(element => {
        localStorage.setItem(String(element.id), element.price)
      });
    }
  })
}