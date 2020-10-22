<div class="row">
	<div class="col-md-6">
		<h3>DASHBOARD</h3>
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
            <div class="small-box bg-info">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;">TOTAL JUMLAH SISWA AKTIF</p>
              <p style="margin-left:20px;padding-bottom:30px;font-size:50px;"><?php echo join(',', $siswa_aktif); ?></p>
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

          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <p style="margin-left:20px;padding-top:20px;font-weight:bold;">JUMLAH RUANGAN</p>
                <p style="margin-left:20px;padding-bottom:30px;font-size:50px;"><?php echo join(',', $hitungjumlahruangan); ?></p>
              </div>
            </div>
        
          </div>  