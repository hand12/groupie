$(function(){

  $('#gender').on('change', function(e){
    e.preventDefault();
    gender = $('#gender').value();

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

  createsvg();

    function createsvg () {
      var viewWidth = document.body.clientWidth * 0.7;
      var r1 = 100;
      // var r2 = 20;
      // var r3 = 40;
      var c1 = [viewWidth / 2, 240, r1];
      //距離
      var rand = Math.floor( Math.random() * 361 );
      var radian = rand * Math.PI / 180;
      var distance = 500;
      var x = Math.cos(radian) * distance;
      var y = Math.sin(radian) * distance;
      if (x < 0){
        x = x * -1;
      }
      if(y < 0){
        y = y * -1;
      }
      var r = 20;//プロダクトの公倍数
      var newCircle = [x, y, r];
      var carray = [c1];
      carray.push(newCircle);

      var svg = d3.select("#example").append("svg")
          .attr({
            width: viewWidth,
            height: 480
          });
    var color = d3.scale.category10();

    var g = svg.selectAll('g')
      .data(carray).enter().append('g')
      .attr({
        transform: function(d) {
          return "translate(" + d[0] + "," + d[1] + ")";
        },
      });

    g.append('circle')
      .attr({
        'r': 0,
        'fill': 0
      })
      .transition()
      .duration(1000)
      .ease("bounce")
      .attr({
        'r': function(d) { return d[2]; },
        'fill': function(d,i) { return color(i); }
      });

    g.append('text')
      .attr({
        'text-anchor': "middle",
        'dy': ".35em",
        'fill': 'white',
      })
      .text(function(d) { return "ほげ"; });//中カテゴリの名前

    var line = d3.svg.line()
        .x(function(d) {return d[0];})
        .y(function(d) {return d[1];});

    var startPosition = [carray[0][0], carray[0][1]];
    var lineCarray = [startPosition];
    for(i=1; i<carray.length; i++ ){
       var targetPosition = [carray[i][0], carray[i][1]];
       lineCarray.push(targetPosition);
       var path = svg.append('path')
        .attr({
          'd': line(lineCarray),
          'stroke': 'gray',
          'stroke-width': 2,
          'fill': 'none'
        });
        lineCarray.pop();
    }
  };
});
