<div class="row">
	<div class="col-md-6">
		<h1><b>DASHBOARD</b></h1>
	</div>
	<div class="col-md-6">
		<div class="tambah-user">
			
		</div>
	</div>


</div>
<hr>

<?php
$siswa_aktif = $ruang->hitung_jumlahsiswa();
$hitungsiswaperempuan = $ruang->hitung_jumlahsiswaperempuan();
$hitungsiswalaki = $ruang->hitung_jumlahsiswalaki();
$hitungsdk = $ruang->hitung_jumlahsdk();
$hitungnonsdk = $ruang->hitung_jumlahnonsdk();
$hitungjumlahruangan = $ruang->hitung_jumlahruangan();
$hitungalumni = $ruang->hitungalumni();

?>


<div class="row">
          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box " style="background:#0BA5AF;">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;color:#ffffff;">TOTAL JUMLAH SISWA AKTIF</p>
              <p style="margin-left:20px;padding-bottom:30px;font-size:50px;color:#ffffff;"><?php echo join(',', $siswa_aktif); ?></p>
              </div>
              
            </div>
        
          </div>

          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box " style="background:#0BA5AF;">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;color:#ffffff;">TOTAL JUMLAH SISWA AKTIF</p>
              <p style="margin-left:20px;padding-bottom:30px;font-size:50px;color:#ffffff;"><?php echo join(',', $siswa_aktif); ?></p>
              </div>
              
            </div>
        
          </div>


          
          <div class="col-lg-6 col-6" style="margin-bottom:20px;">
            <!-- small box -->
            <div class="small-box bg-info"  style="background:#DF2B57;">
              <div class="inner">
                <table >
                  <tr>
                    <td width="70%"><p style="margin-left:20px;padding-top:10px;font-weight:bold;color:#ffffff;">TOTAL JUMLAH SISWA AKTIF SD</p>
                    <p style="margin-left:20px;padding-bottom:30px;font-size:50px;color:#ffffff;"><?php echo join(',', $siswa_aktif); ?></p>
                </td>
                <td width="15%">
                  <p style="padding-top:20px;text-align:center;font-weight:bold;color:#ffffff;">LAKI-LAKI</p>
                  <p style="padding-bottom:30px;text-align:center;font-size:40px;color:#ffffff;"><?php echo join(',', $siswa_aktif); ?></p>
                </td> 
                  <td width="15%">
                  <p style="padding-top:20px;text-align:center;font-weight:bold;color:#ffffff;">PEREMPUAN</p>
                  <p style="padding-bottom:30px;text-align:center;font-size:40px;color:#ffffff;"><?php echo join(',', $siswa_aktif); ?></p></td>
                  </tr>
                </table>          
            </div>             
            </div>
          </div>

        
          
          

          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-info"  style="background:#333333;">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;color:#ffffff;">TOTAL JUMLAH SISWA AKTIF SMP</p>
              <p style="margin-left:20px;padding-bottom:30px;font-size:50px;color:#ffffff;"><?php echo join(',', $siswa_aktif); ?></p>
              </div>
            </div>
          </div>

          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-info"  style="background:#333333;">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;color:#ffffff;">TOTAL JUMLAH SISWA AKTIF SMA</p>
              <p style="margin-left:20px;padding-bottom:30px;font-size:50px;color:#ffffff;"><?php echo join(',', $siswa_aktif); ?></p>
              </div>
            </div>
        
          </div>

          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;">TOTAL JUMLAH ALUMNI</p>
              <p style="margin-left:20px;padding-bottom:30px;font-size:50px;"><?php echo join(',', $hitungalumni); ?></p>
              </div>
            </div>
        
          </div>

          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;">JUMLAH PESERTA DIDIK LAKI-LAKI AKTIF</p>
                <p style="margin-left:20px;padding-bottom:30px;font-size:50px;"><?php echo join(',', $hitungsiswalaki); ?></p>
              </div>
            </div>
        
          </div>

          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;">JUMLAH PESERTA DIDIK PEREMPUAN AKTIF</p>
                <p style="margin-left:20px;padding-bottom:30px;font-size:50px;"><?php echo join(',', $hitungsiswaperempuan); ?></p>
              </div>
            </div>
        
          </div>

          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;">JUMLAH SDK</p>
                <p style="margin-left:20px;padding-bottom:30px;font-size:50px;"><?php echo join(',', $hitungsdk); ?></p>
              </div>
            </div>
        
          </div>        

          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;">JUMLAH NON SDK</p>
                <p style="margin-left:20px;padding-bottom:30px;font-size:50px;"><?php echo join(',', $hitungnonsdk); ?></p>
              </div>
            </div>
        
          </div>        
