$(function(){

  $('#gender').on('change', function(e){
    e.preventDefault();
    input = $('#gender').val();

    $.ajax({
      url: '/suggests/gender',
      type: 'get',
      datatype: 'json',
      data: { gender: input },
    })
    .done(function(data){

    })
    .fail(function(data){

    });
  });
});
