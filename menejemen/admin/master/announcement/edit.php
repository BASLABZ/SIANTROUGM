<?php 
    $idpengumuman  = $_GET['announcement_id'];
    $sqlTampil  = mysql_query("SELECT * from ref_announcement where announcement_id ='".$idpengumuman."' ");
    $rowPengumuman  = mysql_fetch_array($sqlTampil);

    // proses ubah data menu
    if (isset($_POST['ubah'])) {
      $queryUbahPengumuman = mysql_query("UPDATE ref_announcement SET
                                                          announcement_info='".$_POST['announcement_info']."',
                                                          operator_id_fk ='".$_POST['operator_name']."'
                                                       WHERE announcement_id='".$idpengumuman."'");
      if ($queryUbahPengumuman) {
        echo "<script> alert('Terimakasih Data Berhasil Diubah'); location.href='index.php?hal=master/announcement/list' </script>";exit;
      }
    }
 ?>
<section class="content-header">
      <h1>
        Ubah Master Pengumuman
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master</a></li>
        <li class="active">Ubah</li>
        <li class="active">Pengumuman</li>
      </ol>
  </section>
  <section class="content">
    <div class="col-md-6">
          <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Ubah Data Pengumuman</h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <div class="box-body">
          <form class="role" method="POST">
            <div class="form-group row">
              <label class="col-md-4">Isi Pengumuman</label>
              <div class="col-md-8">
                <textarea name="announcement_info" class="form-control"><?php echo $rowPengumuman['announcement_info']; ?></textarea>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4">Url Menu</label>
              <div class="col-md-8">
                <input type="text" required class="form-control" name="menu_url" placeholder="Nama Url" value="<?php echo $rowMenu['menu_url']; ?>">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4">Parent Menu</label>
              <div class="col-md-8">
               <select class="form-control" required=required name="menu_parent">
                 <?php 
                    $sqlmenu="SELECT menu_id, menu_name, menu_url from ref_menu where menu_parent=0 order by menu_id ASC";
                      $runsqlmen=mysql_query($sqlmenu);
                      while ($datamenu=mysql_fetch_array($runsqlmen)) {
                        $varMenuid=$datamenu['menu_id'];
                        $varMenuname=$datamenu['menu_name']; ?>
                        <option value="<?php echo $varMenuid ?>"
                                                <?php if($varMenuid==$rowMenu['menu_parent']){echo "selected=selected";}?>><?php  echo $varMenuname; ?>
                                            </option>
                    <?php 
                      }//tutup while
                    ?>
               </select>
              </div>
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-sm pull-right" type="submit" name="ubah"><span class="fa fa-pencil"></span> Ubah</button>
            </div>
          </form>
       
          
        </div>
      </div>
    </div>
  </section>