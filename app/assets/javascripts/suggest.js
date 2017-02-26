$(function(){

  $('#gender_select').on('change', function(e){
    e.preventDefault();
    gender = $('#gender_select').value();

    $.ajax({
      url: '/suggest/gender',
      type: 'post',
      datatype: 'json',
      data: gender,
    })
    .done(function(data){

    })
    .fail(function(data){

    });
  });
});
