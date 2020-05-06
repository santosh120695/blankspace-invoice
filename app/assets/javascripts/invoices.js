$('document').ready(function(){
  var tax = 0;
  var other_charges = 0;
  var discount = 0;
  $(".product-select").on('change', function(e){
      product_selected = $(this).val()
      price = localStorage.getItem(product_selected)
      $(this).parents('tr').find('.per-unit-price').val(price)
      calculate_cost()
  })

  $(".pro-quantity").on('change', function(){
      calculate_cost()
  })
  $("#invoice_tax").on('change', function(){
    calculate_cost()
  }) 
  $("#invoice_discount").on('change', function(){
    calculate_cost()
  })
  $("#invoice_other_charges").on('change', function(){
    calculate_cost()
  })
})


function calculate_cost(){
  trs = $("#sold-products").find("tr")
  total_cost = 0
  tax = $("#invoice_tax").val()
  discount = $("#invoice_discount").val()
  other_charges = $("#invoice_other_charges").val()
  var quantity 
  var price
  for(var i=0; i< trs.length; i++ ){
    quantity = $(trs[i]).find('.pro-quantity').val()
    price = $(trs[i]).find('.per-unit-price').val()
    if(quantity && price){
      total_cost += quantity * price
    }
  }
  if(total_cost > 0){
    if(discount){
      total_cost+= (-1)*(parseInt(discount))
      console.log(total_cost)
    }
    if(tax){
      console.log(total_cost)
      total_cost+=total_cost*(parseInt(tax)/100.0)
      console.log(total_cost)
    }
    if(other_charges){
      total_cost+=parseInt(other_charges)
    }
  }
  $("#invoice_total_cost").val(total_cost)
}



function fetch_all_products() {
  $.ajax({
    url: '/products.json',
    method: 'GET',
    success: function(response){
      response.forEach(function(element) {
        localStorage.setItem(String(element.id), element.price)
      });
    }
  })
}