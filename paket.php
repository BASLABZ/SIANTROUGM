  <!-- prosedur -->
    <div id="process" class="process content-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 marg-60-btm">
            <h2 class="text-big text-center text-uppercase"><span class="fa fa-list"></span> Paket - Paket Kursus</h2>
            <hr>
           <i><p align="center"><span class="fa fa-arrow-left"></span> INFORMASI DAFTAR KURSUS ANTROPLOGY UGM YOGYAKARTA <span class="fa fa-arrow-right"></span> </p></i>
           <?php 
            error_reporting(0);
            $session = $_SESSION['member_id'];

           if($session =='NULL') {
             
           }else{
            $queryDataBooking  = mysql_query("SELECT * FROM tbl_temp where member_id_fk ='".$_SESSION['member_id']."'");
            $cekBooking  = mysql_num_rows($queryDataBooking);
            
            if ($cekBooking > 0) {
              echo "<center><a href='index.php?hal=booking' class='btn btn-warning'><span class='fa fa-shopping-cart fa-2x'></span> Data Booking Anda</a></center>";
             }
            }
            ?>
           
           
          </div><!-- .col-## -->
        </div><!-- .row -->
        <div class="row">
        <?php 
            $querpaket = mysql_query("SELECT * FROM ref_coursename ORDER BY coursename_id DESC");
            while ($rowPaket = mysql_fetch_array($querpaket)) {
         ?>
          <div class="col-md-3 col-sm-6">
            <div class="process-item highlight text-center">
              <div class="process-item-icon">
               <h6 class="process-item-title">
                <span class="fa fa-list"></span>
               <?php echo $rowPaket['coursename_title'] ?></h6>

              </div>
              <div class="process-item-content"> 
                
                <h6 class="process-item-title">
                <button class="btn btn-success btn-md btn-block">
                Rp.<?php echo $rowPaket['coursename_price'] ?></button>
                </h6>
                <h6 class="process-item-title">
                <button class="btn btn-success btn-md btn-block">
                <span class="fa fa-users"></span>
                <?php echo $rowPaket['coursename_quota'] ?></button>
                </h6>
                  <h6 class="process-item-title">
                <button class="btn btn-success btn-md btn-block">
               <span class="fa fa-check"></span>
                <?php echo $rowPaket['coursename_status'] ?></button>
                </h6>
                  <h6 class="process-item-title">
                    <?php if ($rowPaket['coursename_quota']==0) { ?>
                    <a href="#" class="btn btn-danger btn-md btn-block">Kuota Penuh</a>
                    <?php }else{ ?>
                    <a href="aksi.php?module=keranjang&act=tambah&id=<?php echo $rowPaket['coursename_id']; ?>" class="btn btn-success btn-md btn-block">
                    Daftar Paket <span class="fa fa-arrow-right"></span></a>
                     <?php } ?>
                </h6>
                
              </div><!-- .process-item-content -->
            </div><!-- .process-item -->
          </div><!-- .col-## -->
          <?php } ?>
        </div><!-- .row -->
      </div><!-- .container -->
    </div><!-- #process -->
    <!-- end:process -->
