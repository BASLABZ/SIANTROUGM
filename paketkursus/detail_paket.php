   <?php 
    $INVOICE = $_GET['invoice'];
    
    ?>
    <div id="process" class="process content-section bg-light">
      <div class="container">
        
        <div class="row">

          <div class="col-md-12">
            <div class="process-item highlight text-center">
              <div class="process-item-icon">
               <h1 class="process-item-title">
              <span class="fa fa-list"></span> PAKET BERDASARKAN INVOICE : <?php echo $INVOICE; ?>
               </h1>
           
              </div>
              <div class="process-item-content"> 
                
                   <div class="row">
                <div class="col-md-2"><a href="index.php?hal=paketkursus/list" class="btn btn-success"><span class="fa fa-arrow-left"></span> Kembali</a></div>
                <div class="col-md-8"></div>
              </div>
              <br>
              <table class="table table-resposive table-hover table-bordered">
                <thead>
                  <th>No</th>
                  <th>Nama Kursus</th>
                  <th>Harga Paket</th>
                  <th>Status</th>
                  
                  
                </thead>
                <tbody>
                <?php 
                  $no=0;
                  $sqlSlipPembayaran  = mysql_query("SELECT * FROM tblx_trainee_detail d JOIN tbl_trainee tn ON d.trainee_id_fk = tn.trainee_id JOIN ref_coursename c ON d.coursename_id_fk = c.coursename_id JOIN tbl_member m ON tn.member_id_fk = m.member_id where tn.trainee_invoice='".$INVOICE."' ");

                  while ($rowpembayaran_preview = mysql_fetch_array($sqlSlipPembayaran)) {
                 ?>
                  <tr>
                    <td><?php echo ++$no; ?></td>
                    <td><?php echo $rowpembayaran_preview['coursename_title']; ?></td>
                    <td><?php echo $rowpembayaran_preview['coursename_price']; ?></td>
                    <td><?php echo $rowpembayaran_preview['trainee_status']; ?>  <?php if ($rowpembayaran_preview['trainee_status']=='PENDING') {
                        echo "& Menunggu Pembayaran";
                      } ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
              </table>
                
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </div>
