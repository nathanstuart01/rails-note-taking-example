$(document).ready( function() {
  $addButton = $('#add');
  $addForm = $('#add_form');
 $('#add').on('click', function() {
   $('#add_form').toggleClass('hide');
   var text = $('#add_form').hasClass('hide') ? 'Add note' : 'Cancel';
   $(this).html(text);
 });
});
