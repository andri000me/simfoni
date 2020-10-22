<html>
	<head>
    <script src="../assets/grafik/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="../assets/grafik/highcharts.src.js" type="text/javascript"></script>
<script type="text/javascript">
	var chart1; 
$(document).ready(function() {
      chart1 = new Highcharts.Chart({
         chart: {
            renderTo: 'container',
            type: 'column'
         },   
         title: {
            text: 'Grafik Class Project SMP <br>  '
         },
		 
         xAxis: {
            categories: ['Jenjang Pendidikan SMP']
         },
         yAxis: {
            title: {
               text: 'Jumlah Class Project'
            }
         },
              series:             
            [
            <?php 
            $semua_project = $project->grafiksmp_project_admin();
            foreach ($semua_project as $value) {
                $nama_semester = $value['nama_semester']; //ambil sem
                $jumlah =  $value['jumlah']; //ambil jumlah
            ?>
                  {	  
					  
                      name: '<?php echo $nama_semester; ?>',
                      data: [<?php echo $jumlah; ?>]
                  },
                  <?php } ?>
            ]
      });
   });	
</script>
	</head>
	<body>
		<div id='container' style=" width: 500px"></div>		
	</body>
</html>