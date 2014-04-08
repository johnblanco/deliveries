function refresh_item_list(){
  $.get("/cart_items",function(data){
    $("#cart_items").html(data);
  });
}

$(document).ready(function(){
  $.ajaxSetup({
    headers: {
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    }
  });

  $(".product").click(function(){
    $("#add_to_cart_modal").modal('show');
    $.get("/modal_content/" + $(this).attr("product_id"),function(data){
      $("#add_to_cart_modal .modal-body").html(data);
    });
  });

  $("#add_to_delivery").click(function(){
    var params = {};
    params['product_id'] = $("#product_id_hidden").val();
    params['amount'] = $.trim($("#amount").val());
    params['comments'] = $.trim($("#comments").val());

    $("#add_to_cart_modal").modal('hide');
    $.post("/add_to_cart", params, function(data){
      refresh_item_list();
    });
  });

  $(document).on("click",".remove_item",function(){
    $.post("/remove_item",{item_id: $(this).attr("item_id")},function(){
      refresh_item_list();
    });
  });
});