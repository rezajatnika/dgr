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
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require cocoon
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
  $('.datepickered').datepicker();

  $('form').on('cocoon:after-insert', function(e, added_thing) {
    var selection = added_thing.find('select');
    var disabledField = added_thing.find('input:disabled');

    selection.on('change', function(e) {
      var productInventory = ($('#product-' + selection.val()).data('quantity'));
      $.getJSON('/products/' + selection.val() + '.json', function(json) {
        disabledField.val(json.quantity);
      });
    });
  });
});
