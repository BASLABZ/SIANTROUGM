
    <div id="process" class="process content-section bg-light">
      <div class="container">
        
        <div class="row">

          <div class="col-md-12">
            <div class="process-item highlight text-center">
              <div class="process-item-icon">
               <h1 class="process-item-title">
              <span class="fa fa-list"></span>DAFTAR PAKET KURSUS :
               </h1>
           
              </div>
              <div class="process-item-content"> 

              <table class="table table-resposive table-hover table-bordered">
                <thead>
                  <th>No</th>
                  <th>Invoice</th>
                  <th>Tanggal Input</th>
                  <th>Status</th>
                  <th>Aksi</th>
                </thead>
                <tbody>
                <?php 
                  $no=0;
                  $sqlpaketkursus  = mysql_query("SELECT * FROM  tbl_trainee tn JOIN tbl_member m ON tn.member_id_fk = m.member_id where m.member_id='".$_SESSION['member_id']."' ");

                  while ($paketkursus = mysql_fetch_array($sqlpaketkursus)) {
                 ?>
                 <tr>
                          <td><?php echo ++$no; ?></td>
                          <td><?php echo $paketkursus['trainee_invoice']; ?></td>
                          <td><?php echo $paketkursus['trainee_inputdate']; ?></td>
                          <td><?php echo $paketkursus['trainee_invoice_status']; ?></td>
                          <td>
                            <a href="index.php?hal=paketkursus/detail_paket&invoice=<?php echo $paketkursus['trainee_invoice']; ?>" class="btn btn-warning"><span class="fa fa-eye"></span> Lihat Data</a>
                            <?php if ($paketkursus['trainee_invoice_status']=='PENDING') {
                              echo " <a href='index.php?hal=pembayaran/pembayaran&invoice=".$paketkursus['trainee_invoice']."' class='btn btn-success'><span class='fa fa-eye'></span> Bayar</a>";
                            } 
                            ?>
                           </td>
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
  
