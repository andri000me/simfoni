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
            text: 'Grafik Guest Teacher SD <br>  '
         },
		 
         xAxis: {
            categories: ['Jenjang Pendidikan SD']
         },
         yAxis: {
            title: {
               text: 'Jumlah Guest Teacher'
            }
         },
              series:             
            [
            <?php 
            $semua_project = $guest->grafiksd_guest_admin();
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
		<div id='container' style=" width: 500px"></div>		
	</body>
</html>