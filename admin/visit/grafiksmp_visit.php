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
            text: 'Grafik School Visit SMP <br>  '
         },
		 
         xAxis: {
            categories: ['Jenjang Pendidikan SMP']
         },
         yAxis: {
            title: {
               text: 'Jumlah School Visit'
            }
         },
              series:             
            [
            <?php 
            $semua_project = $visit->grafiksmp_visit_admin();
            foreach ($semua_project as $value) {
                $nama_semester = $value['nama_semester']; //ambil semester
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
		<div id='container' style=" width: 300px"></div>		
	</body>
</html>