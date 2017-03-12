 <?php 
  error_reporting(0);
  // tampil data 
   $idmember = $_GET['member_id'];
   $queryTampil = mysql_query("SELECT * from tbl_member where member_id = '".$idmember."'");
   $rowMember = mysql_fetch_array($queryTampil);
  ?>
 <!-- proses simpan data -->
<?php 
      $var_memberid = $rowMember['member_id'];
      $var_membername = $rowMember['member_name'];

      $to = $rowMember['member_useremail'];

    if (isset($_POST['tolak'])) {
      mysql_query("UPDATE tbl_member SET member_status_active='ignore', member_confirm_date='NOW()' WHERE member_id='".$idmember."' ");


      //kirim email lokal 
      $subject  = 'Testing sendmail.exe';
      $message  = "<!doctype html>
                            <html>
                            <head>
                            <meta name='viewport' content='width=device-width'>
                            <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
                            <title>Paleo UGM</title>

                            </head>

                            <body>

                            <!-- body -->
                            <table style='padding: 20px; width: 100%;'>
                              <tr>
                                <td></td>
                                <td>

                                  <!-- content -->
                                  <div style='display: block; margin: 0 auto; max-width: 600px'>
                                  <table>
                                    <tr>
                                      <td>
                                        <h2>Konfirmasi Pendaftaran</h2><br/>
                                        <p>Hi <?php echo $var_membername; ?>,</p>
                                        <p>
                                            Mohon maaf kami sampaikan bahwa permohonan pendaftaran yang Anda ajukan untuk menjadi anggota Paleo UGM telah kami tolak dikarenakan <b>".$_POST['frm_Tmemberalasantolak']."</b> <br/><br/>

                                            Permohonan pendaftaran yang diajukan, kami nilai berdasarkan tingkat kepentingan instansi Anda dalam melakukan pemesanan replika fosil.
                                        </p>
                                        
                                        <br/>
                                        
                                        <br/><br/>
                                        <p><i>Email ini dibuat secara otomatis. Mohon tidak mengirimkan balasan ke email ini.</i></p>
                                        <hr>
                                        <p align='right'>Copyright &copy; Paleoantropologi UGM 2017</p>
                                      </td>
                                    </tr>
                                  </table>
                                  </div>
                                  <!-- /content -->
                                  
                                </td>
                                <td></td>
                              </tr>
                            </table>
                            <!-- /body -->

                            </body>
                            </html>";
      $headers  = 'From: ambardhanes@gmail.com' . "\r\n" .
                  'MIME-Version: 1.0' . "\r\n" .
                  'Content-type: text/html; charset=utf-8';
      mail($to, $subject, $message, $headers);
           


      $_SESSION['pesan_sukses'] = 'Konfirmasi penolakan berhasil dikirim';
    }

    if (isset($_POST['terima'])) {
      mysql_query("UPDATE tbl_member SET member_status_active='inactive', member_confirm_date='NOW' WHERE member_id='".$idmember."' ");

      $subject  = 'Testing sendmail.exe';
      $message  = "<!doctype html>
                            <html>
                            <head>
                            <meta name='viewport' content='width=device-width'>
                            <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
                            <title>Paleo UGM</title>

                            </head>

                            <body>

                            <!-- body -->
                            <table style='padding: 20px; width: 100%;'>
                              <tr>
                                <td></td>
                                <td>

                                  <!-- content -->
                                  <div style='display: block; margin: 0 auto; max-width: 600px'>
                                  <table>
                                    <tr>
                                      <td>
                                        <h2>Konfirmasi Pendaftaran</h2><br/>
                                        <p>Hi <?php echo $var_membername; ?>,</p>
                                        <p>
                                            Terima kasih sudah mendaftar untuk bergabung dengan Paleoantropologi UGM. Data Anda telah kami verifikasi, untuk mengaktifkan akun Anda, mohon lakukan aktifasi melalui tombol dibawah ini :
                                        </p>
                                        <!-- button -->
                                        <center>
                                        <table class='table' cellpadding='0' cellspacing='0' border='0'>
                                          <tr>
                                            <td>
                                              <a href='http://localhost/siantrougm/index.php?id=<?php echo $var_memberid; ?>' class='btn btn-success'>Aktifkan Akun Anda</a>
                                            </td>
                                          </tr>
                                        </table>
                                        </center>
                                        <!-- /button -->
                                        <br/>
                                        <p>Jika tombol di atas tidak berfungsi silakan klik link di bawah ini</p>
                                        <p><a href='http://localhost/siantrougm/index.php?id=<?php echo $var_memberid; ?>'>http://localhost/siantrougm/index.php?id=<?php echo $var_memberid; ?></a></p>
                                        <p>
                                          Mohon lakukan aktifasi sebelum <?php date('Y-m-d', strtotime('+7 days')) ?>
                                        </p>
                                        <br/><br/>
                                        <p><i>Email ini dibuat secara otomatis. Mohon tidak mengirimkan balasan ke email ini.</i></p>
                                        <hr>
                                        <p align='right'>Copyright &copy; Paleoantropologi UGM 2017</p>
                                      </td>
                                    </tr>
                                  </table>
                                  </div>
                                  <!-- /content -->
                                  
                                </td>
                                <td></td>
                              </tr>
                            </table>
                            <!-- /body -->

                            </body>
                            </html>";
      $headers  = 'From: ambardhanes@gmail.com' . "\r\n" .
                  'MIME-Version: 1.0' . "\r\n" .
                  'Content-type: text/html; charset=utf-8';
       mail($to, $subject, $message, $headers);
       

      $_SESSION['pesan_sukses'] = 'Konfirmasi penerimaan berhasil dikirim';      
    }
 ?>
  <section class="content-header" style="">
      <h1>
        Detail Data Member
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Daftar Member</a></li>
        <li class="active">Detail Member</li>
      </ol>
  </section>
  <section class="content">
    <div class="col-md-10">
          <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Detail Data Member</h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <div class="box-body">
          <form class="role" method="POST" enctype="multipart/form-data">
            <div class="form-group row">
              <div class="col-md-12">
                <label class="col-md-2">Nama Member</label>
              <div class="col-md-4">
                <input type="text"  class="form-control" name="member_name" readonly="Nama Member"
                value="<?php echo $rowMember['member_name']; ?>">
              </div>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-md-6">
              <label class="col-md-4">User Email</label>
              <div class="col-md-8">
                <input type="text"  class="form-control" name="member_useremail" readonly value="<?php echo $rowMember['member_useremail']; ?>">
              </div>
              </div>
              <div class="col-md-6">
              <label class="col-md-4">Password</label>
              <div class="col-md-8">
                <input type="password"  class="form-control" name="member_password" readonly value="<?php echo $rowMember['member_password']; ?>">
              </div>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-md-6">
              <label class="col-md-4">Tempat Lahir</label>
              <div class="col-md-8">
               <textarea class="form-control"  name="member_placeofbirth" readonly style="resize:none">
                 <?php echo $rowMember['member_placeofbirth']; ?>
               </textarea>
              </div>
              </div>
              <div class="col-md-6">
              <label class="col-md-4">Tanggal Lahir</label>
              <div class="col-md-8">
                <input type="date"  class="form-control" name="member_dateofbirth" readonly value="<?php echo $rowMember['member_dateofbirth']; ?>">
              </div>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-md-6">
              <label class="col-md-4">Agama</label>
              <div class="col-md-8">
               <select class="form-control" name="member_religion" readonly>
                 <option value="<?php echo $rowMember['member_religion']; ?>"><?php echo $rowMember['member_religion']; ?></option>
               </select>
              </div>
              </div>
              <div class="col-md-6">
              <label class="col-md-4">Jenis Kelamin</label>

              <div class="col-md-8">
              <select class="form-control" name="member_gender" readonly>
                <option value="<?php echo $rowMember['member_gender']; ?>"><?php echo $rowMember['member_gender']; ?></option>
              </select>
              </div>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-md-6">
              <label class="col-md-4">Alamat</label>
              <div class="col-md-8">
                <textarea class="form-control" name="member_address" readonly style="resize:none"><?php echo $rowMember['member_address']; ?></textarea>
              </div>
              </div>
              <div class="col-md-6">
              <label class="col-md-4">No.Telp</label>
              <div class="col-md-8">
                <input type="number"  class="form-control" name="member_phonenumber" readonly value="<?php echo $rowMember['member_phonenumber']; ?>">
              </div>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-md-6">
              <label class="col-md-4">Instansi</label>
              <div class="col-md-8">
                <input type="text" value="<?php echo $rowMember['member_institution']; ?>" class="form-control" name="member_institution" readonly>
              </div>
              </div>
              <div class="col-md-6">
              <label class="col-md-4">Bidang</label>
              <div class="col-md-8">
                <input type="text" value="<?php echo $rowMember['member_skill']; ?>"  class="form-control" name="member_skill" readonly>
              </div>
              </div>
            </div>
             <div class="form-group row">
              <div class="col-md-6">
              <label class="col-md-4">Jabatan</label>
              <div class="col-md-8">
                <input type="text" class="form-control" value="<?php echo $rowMember['member_position']; ?>" name="member_position" readonly>
              </div>
              </div>
              <div class="col-md-6">
              <label class="col-md-4">Kartu Identitas Profesi</label>
              <div class="col-md-8">
                
                  <img src="../upload/berkas/<?php echo $rowMember['member_doc']; ?>"  class="img-responsive img-thumbnail"><br/>
                  <a href="">View Thumbnail</a> <!-- maaf belum sempat dibikin :( -->
                
              </div>
              </div>
            </div>
            <div class="form-group pull-right">
              <?php 
                if ($rowMember['member_status_active']=='pending') { ?>
                  <button class="btn btn-warning " type="submit" name="tolak"><span class=""></span> Tolak </button> 
                  <button class="btn btn-primary" type="submit" name="terima"><span class=""></span> Konfirmasi </button> <?php
                }
              ?>
            </div>
          </form>
       
          
        </div>
      </div>
    </div>
    <div class="col-md-2">
      <img src="../upload/memberimage/<?php echo $rowMember['member_image']; ?>"  class="img-responsive img-thumbnail">
    </div>
  </section>


  <?php 
    if ($_SESSION['pesan_sukses']!='') {
        echo "<script> alert('".$_SESSION['pesan_sukses']."') </script>";
        unset($_SESSION['pesan_sukses']);
      }
  ?>