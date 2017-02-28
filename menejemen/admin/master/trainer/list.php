  <!-- proses hapus data master Pengajar -->
  <?php 
      if (isset($_GET['hapus'])) {

         $queryHapusPengajar  = "DELETE from ref_trainer where trainer_id='".$_GET['hapus']."'";
        $runDelete = mysql_query($queryHapusPengajar);
        if ($runDelete){
            echo "<script> alert('Terimakasih Data Berhasil Dihapus'); location.href='index.php?hal=master/trainer/list' </script>";exit;
        }
      }
   ?>
  <section class="content-header">
      <h1>
        Master Pengajar
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master</a></li>
        <li class="active">Pengajar</li>
      </ol>
  </section>
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Daftar Data Master Pengajar <a href="index.php?hal=master/trainer/add" class="btn btn-info btn-sm"><span class=" fa fa-plus"></span> Tambah Data</a></h3>
            </div>
            <div class="box-body">
              <table id="tableMasterScroll" class="table table-bordered table-hover table-responsive">
                <thead>
                  <th>No</th>
                  <th>Nama Pengajar</th>
                  <th>Username</th>
                  <th>Tempat/Tanggal Lahir</th>
                  <th>Agama</th>
                  <th>Jenis Kelamin</th>
                  <th>Alamat</th>
                  <th>No Telpon</th>
                  <th>Email</th>
                  <th>Position</th>
                  <th>Status</th>
                  <th>Foto</th>
                  <th>Website</th>
                  <th>Aksi</th>
                </thead>
                <tbody>
                  <?php 
                    $no=0;
                    $queryPengajar = mysql_query("SELECT * FROM ref_trainer order by trainer_id DESC");
                    while ($rowTrainner  = mysql_fetch_array($queryPengajar)) {
                   ?>
                    <tr>
                      <td><?php echo ++$no; ?></td>
                      <td><?php echo $rowTrainner['trainer_name']; ?></td>
                      <td><?php echo $rowTrainner['trainer_username']; ?></td>
                      <td><?php echo $rowTrainner['trainer_placeofbirth']; ?>/<?php echo $rowTrainner['trainer_dateofbirth']; ?></td>
                      <td><?php echo $rowTrainner['trainer_gender']; ?></td>
                      <td><?php echo $rowTrainner['trainer_religion']; ?></td>
                      <td><?php echo $rowTrainner['trainer_address']; ?></td>
                      <td><?php echo $rowTrainner['trainer_phonenumber']; ?></td>
                      <td><?php echo $rowTrainner['trainer_email']; ?></td>
                      <td><?php echo $rowTrainner['trainer_position']; ?></td>
                      <td><?php echo $rowTrainner['trainer_status']; ?></td>
                      <td><img src="img/<?php echo $rowTrainner['trainer_image']; ?>" class="img-thumbnail img-responsive" style="width: 100px; height: 100px;" >
                      </td>
                      <td><?php echo $rowTrainner['trainer_website']; ?></td>

                      <td>
                        <a href="index.php?hal=master/trainer/edit&trainer_id=<?php echo $rowTrainner['trainer_id'] ?>" class="btn btn-warning bt-xs"><span class="fa fa-pencil"></span> Ubah</a>
                        <a href="index.php?hal=master/trainer/list&hapus=<?php echo $rowTrainner['trainer_id']; ?>" class="btn btn-danger bt-xs"><span class="fa fa-trash"></span> Hapus</a>
                      </td>

                    </tr>
                   <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>