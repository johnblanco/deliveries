$(document).ready(function(){
  $(".product").click(function(){
    $("#add_to_cart_modal").modal('show');
    $.get("/modal_content/" + $(this).attr("product_id"),function(data){
      $("#add_to_cart_modal .modal-body").html(data);
    });
  });

  $("#add_to_delivery").click(function(){
    var params = {};
    params['product_id'] = $("#product_id_hidden").val();
    params['amount'] = $("#amount").val();
    params['comments'] = $("#comments").val();

    $.post("/add_to_delivery", params, function(){

    });
  });
});