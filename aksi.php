<?php 
		session_start();
		error_reporting(0);
		include 'menejemen/config/inc-db.php';

		$module = $_GET['module'];
		$act = $_GET['act'];


		if ($module=='keranjang' AND $act=='tambah') {
			$sqlCekKuota = mysql_query("SELECT coursename_quota FROM ref_coursename where coursename_id='".$_GET['id']."'");
			$rowQuota = mysql_fetch_array($sqlCekKuota);
			$quota = $rowQuota['coursename_quota'];
			$cekBooking =mysql_query("SELECT * FROM tbl_temp where coursename_id_fk ='".$_GET['id']."' AND member_id_fk = '".$_SESSION['member_id']."'");
			$rowCekKodePaket = mysql_num_rows($cekBooking);
			$cekLogin = $_SESSION['member_id'];
			if ($cekLogin == 'NULL') {
				echo "<script>window.alert('Anda Belum Login, Silahkan Login Terlebi Dahulu');
						window.location=('index.php?hal=paket')</script>";
			}else if ($rowCekKodePaket <= 0) {
				if ($quota == 0) {
					echo "KUOTA PENUH";
				}else{
					$sqlINSERT = mysql_query("INSERT INTO tbl_temp (temp_inputdate,coursename_id_fk,member_id_fk)
													 VALUES (NOW(),'".$_GET['id']."','".$_SESSION['member_id']."')");
					header('Location:index.php?hal=booking');
				}	
			}else {
				echo "<script>window.alert('Anda Sudah Memilih Paket Ini');
						window.location=('index.php?hal=paket')</script>";
			}
		
			
		}
 ?>