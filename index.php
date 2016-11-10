<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Membuat Template Website Bootstrap</title>
    <script type="text/javascript" src="libs/js/jquery.min.js"></script>
        <script type="text/javascript">
        $(document).ready(function() {
			Highcharts.setOptions({
			global: {
					useUTC: false
					}
			});
            var options = {
                chart: {
                    renderTo: 'container',
                    type: 'column',
                    animation: false,
                    marginRight: 130,
                    marginBottom: 25
                },
				plotOptions: {
					series: {
						borderWidth: 0,
						dataLabels: {
							enabled: true,
							format: '{point.y}'
						}
					}
				},
                title: {
                    text: 'Actual vs Plan',
                    x: -20 //center
                },
				events:{               /*IMPORTANT: HighCharts has the Events option which is an event listener */
				  load: refreshChart() /*Load: Fires when the chart is finished loading.*/
				},  
                subtitle: {
                    text: '',
                    x: -20
                },
                xAxis: {
                    categories: []
                },
                yAxis: {
                    title: {
                        text: 'Requests'
                    },
                    plotLines: [{
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
                },
                tooltip: {
                    formatter: function() {
                            return '<b>'+ this.series.name +'</b><br/>'+
                            this.x +': '+ this.y;
                    }
                },
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'top',
                    x: -10,
                    y: 100,
                    borderWidth: 0
                },
                series: []
            }
            
            $.getJSON("data.php", function(json) {
                options.xAxis.categories = json[0]['data'];
                options.series[0] = json[1];
                options.series[1] = json[2];
                chart = new Highcharts.Chart(options);
            });		
			
			function refreshChart(){                 /*function is called every set interval to refresh(recreate the chart) with the new data from data.php*/
				setInterval(function(){
					$.getJSON("data.php", function(json) {
						options.xAxis.categories = json[0]['data'];
						options.series[0] = json[1];
						options.series[1] = json[2];
						//options.series[0].data = json[1];
						//options.series[1].data = json[2];
						chart = new Highcharts.Chart(options);
					});
				},1000);
			}
		});
        </script>

    <!-- Bootstrap -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of 
         HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom CSS -->
    <link href="assets/style.css" rel="stylesheet">

  </head>
  <body>
  
<div class="container">

    <!-- Bagian Header -->
    <div class="row">
        <div class="col-md-12 header" id="site-header">
            <!-- isi header -->
          <header>
              <h1 class="title-site">Belajar Bootstrap</h1>
              <p class="description">Belajar Membuat Template Website Dengan Bootstrap</p>
          </header>
          <nav class="menus">
    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Portfolio</a></li>
    </ul>
</nav>
        </div>
    </div>
    <!-- End Bagian Header -->

    <!-- Bagian Wrapper 2 kolom -->
    <div class="row">
        <div class="col-md-12 articles" id="site-content">
           <!-- isi content -->
            <article class="posts">
                <h2 class="title-post">Lorem ipsum dolor sit amet</h2>
                <div class="meta-post">
                    <span><em class="glyphicon glyphicon-user"></em> Onphpid</span>
                    <span><em class="glyphicon glyphicon-time"></em> 13 Juni 2015</span>
                </div>
                <div class="content">
                <div id="container" style="min-width: 400px; height: 400px; margin: 0 auto"></div>
                
                </div>
            </article>
            <article class="posts">
                <h2 class="title-post">Lorem ipsum dolor sit amet</h2>
               
            </article>
        </div>
        <!-- <div class="col-md-4 sidebar" id="site-sidebar">
            isi sidebar 
            <aside class="widgets">
                <h3 class="widget-title">Latest Posts</h3>
                <ul>
                    <li><a href="#">Lorem Ipsum</a></li>
                    <li><a href="#">Lorem Ipsum</a></li>
                    <li><a href="#">Lorem Ipsum</a></li>
                    <li><a href="#">Lorem Ipsum</a></li>
                    <li><a href="#">Lorem Ipsum</a></li>
                </ul>
            </aside>
        </div>
    </div> -->
    <!-- End Bagian wrapper -->
    
    <!-- Bagian footer -->
    <div class="row">
        <div class="col-md-12 footer" id="site-footer">
            <!-- isi footer -->
          <footer class="copyright text-center"><p>&copy; 2015 onphpid.com</p></footer>
        </div>
    </div>
    <!-- End Bagian footer -->

</div>

<div class="container">
 
    <!-- Bagian Header -->
    <div class="row">
        <div class="col-md-12 header" id="site-header">
            <!-- isi header -->
        </div>
    </div>
    <!-- End Bagian Header -->
 
    <!-- Bagian Wrapper 2 kolom -->
    <div class="row">
        <div class="col-md-8 articles" id="site-content">
           <!-- isi content -->
        </div>
        <div class="col-md-4 sidebar" id="site-sidebar">
            <!-- isi sidebar -->
        </div>
    </div>
    <!-- End Bagian wrapper -->
    
    <!-- Bagian footer -->
    <div class="row">
        <div class="col-md-12 footer" id="site-footer">
            <!-- isi footer -->
        </div>
    </div>
    <!-- End Bagian footer -->
 
</div>

    <!--happy code-->


    <!-- jQuery online menggunakan CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <!-- jQuery lokal -->
    <script src="assets/jquery/jquery.min.js"></script>
 
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    
    <!-- Custom JS -->
    <script src="assets/custom.js"></script>
  </body>
</html>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Membuat Template Website Bootstrap</title>
 
    <!-- Bootstrap -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 
    <!-- HTML5 shim and Respond.js for IE8 support of 
         HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 
    <!-- Custom CSS -->
    <link href="assets/style.css" rel="stylesheet">
 
  </head>
  <body>
    
    <!--happy code-->
 
 
    <!-- jQuery online menggunakan CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <!-- jQuery lokal -->
    <script src="assets/jquery/jquery.min.js"></script>
 
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    
    <!-- Custom JS -->
    <script src="assets/custom.js"></script>

    <script src="libs/js/highchart/highcharts.js"></script>
    <script src="libs/js/highchart/modules/exporting.js"></script>
  </body>
</html>