// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-datepicker
//= require cocoon
//= require material/flat-ui
//= require jquery_ujs
//= require turbolinks
//= require_tree .

document.addEventListener('turbolinks:load', function() {
  $('.datepickered').datepicker({
    format: 'yyyy-mm-dd'
  });

  $('.datepickered').on('changeDate', function(e) {
    $(this).datepicker('hide');
  });

  $('.alert').fadeOut(3000);

  const agentId = $('#order_agent_id').val();
  $('.order_form').on('cocoon:after-insert', function(e, insertedItem) {
    const $selectProduct = insertedItem.find('select');
    const $quantityInput = insertedItem.find('input:disabled');

    $selectProduct.on('change', function(e) {
      changeQuantity(this, $quantityInput[0], $quantityInput[1], agentId);
    });
  });

  $('a.add_fields').
    data('association-insertion-method', 'append').
    data('association-insertion-node', '#order-items');

  const $selectProduct = $('.nested-fields').find('select');
  $selectProduct.on('change', function(e) {
    const $quantityInput = $('#' + this.id).
      parentsUntil('.row').
      find('input:disabled');
    changeQuantity(this, $quantityInput[0], $quantityInput[1], agentId);
  });
});

function changeOrder() {
  const $orderId = $('#order_id');
  const controller = $('#order_select').data('controller');

  if ($orderId.val()) {
    Turbolinks.visit('/' + controller +'/' + $orderId.val() + '/edit');
  } else {
    Turbolinks.visit('/' + controller);
  }
}

function changeQuantity(select, inputOne, inputTwo, agentId) {
  $.getJSON('/products/' + select.value + '.json', function(json) {
    const agentDeposit = $.grep(json.deposits, function(e) {
      return e.agent_id == agentId;
    });

    inputOne.value = json.inventory.quantity;
    if (agentDeposit[0]) {
      inputTwo.value = agentDeposit[0].quantity;
    }
  });
}
