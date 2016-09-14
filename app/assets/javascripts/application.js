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

document.addEventListener('page:restore', function() {
  app.init();
});

document.addEventListener('turbolinks:load', function() {
  $('.datepickered').datepicker({
    format: 'yyyy-mm-dd'
  });

  $('.datepickered').on('changeDate', function(e) {
    $(this).datepicker('hide');
  });

  $('.alert').fadeOut(3000);

  var agentId = $('#order_agent_id').val();
  $('.order_form').on('cocoon:after-insert', function(e, added_thing) {
    var selection = added_thing.find('select');
    var disabledField = added_thing.find('input:disabled');

    selection.on('change', function(e) {
      changeQuantity(this, disabledField[0], disabledField[1], agentId);
    });
  });

  $('a.add_fields').
    data('association-insertion-method', 'append').
    data('association-insertion-node', '#order-items');

  var selectsInNested = $('.nested-fields').find('select');
  selectsInNested.on('change', function(e) {
    var disabledInput = $('#' + this.id).parentsUntil('.row').
      find('input:disabled');
    changeQuantity(this, disabledInput[0], disabledInput[1], agentId);
  });
});

function changeOrder() {
  var order = $('#order_id');
  if (order.val()) {
    Turbolinks.visit('/orders/' + order.val() + '/edit');
  } else {
    Turbolinks.visit('/orders');
  }
}

function changeShipment() {
  var order = $('#order_id');
  if (order.val()) {
    Turbolinks.visit('/shipments/' + order.val() + '/edit');
  } else {
    Turbolinks.visit('/shipments');
  }
}

function changeQuantity(select, input, inputTwo, agentId) {
  $.getJSON('/products/' + select.value + '.json', function(json) {
    var depo = $.grep(json.deposits, function(e) {
      return e.agent_id == agentId;
    });

    input.value = json.inventory.quantity;
    if (depo[0]) {
      inputTwo.value = depo[0].quantity;
    }
  });
}
