<?php 
	error_reporting(0);
	date_default_timezone_set('Asia/Jakarta');
	
	$var_name			= mysql_real_escape_string($_POST['frm_name']);
	$var_email 			= mysql_real_escape_string($_POST['frm_email']);
	$var_phone 			= mysql_real_escape_string($_POST['frm_phone']);
	$var_gender			= mysql_real_escape_string($_POST['frm_gender']);
	$var_position		= mysql_real_escape_string($_POST['frm_position']);
	$var_institution	= mysql_real_escape_string($_POST['frm_institution']);
	$var_skill			= mysql_real_escape_string($_POST['frm_skill']);
	$var_password		= mysql_real_escape_string($_POST['frm_password']);
	$var_question		= mysql_real_escape_string($_POST['frm_question']);
	$var_answer 		= mysql_real_escape_string($_POST['frm_answer']);


	// ---- || validasi || -----

	// ---- || /validasi || ----

	  $lokasi_file    = $_FILES['frm_profesioncard']['tmp_name'];
	  $tipe_file      = $_FILES['frm_profesioncard']['type'];
	  $nama_file      = $_FILES['frm_profesioncard']['name'];
	  $acak           = rand(000000,999999);
	  $nama_file_unik = $acak.$nama_file; 
	  		
	  $vdir_upload = "/menejemen/berkas/";
	  $vfile_upload = $vdir_upload . $nama_file_unik;
	  $tipe_file   = $_FILES['frm_profesioncard']['type'];

	  //Simpan gambar dalam ukuran sebenarnya
	  move_uploaded_file($_FILES["frm_profesioncard"]["tmp_name"], $vfile_upload);


	$save = "INSERT INTO tbl_member(
					member_name, 
					member_useremail, 
					member_phonenumber,  
					member_password, 
					member_gender, 
					member_position, 
					member_institution,
					member_skill,
					member_hint_question, 
					member_answer_question,
					member_status_active,
					member_register_date,
					member_status_login,
					member_doc)

				VALUES(
					'".$var_name."',
					'".$var_email."',
					'".$var_phone."',
					'".md5($var_password)."',
					'".$var_gender."',
					'".$var_position."',
					'".$var_institution."',
					'".$var_skill."',
					'".$var_question."',
					'".$var_answer."',
					'pending',
					'".date('Y-m-d')."',
					'N',
					'".$."'

					)";

	mysql_query($save);

	$_SESSION['pesan_sukses'] = 'Terimakasih, anda telah menyelesaikan proses pendaftaran. Kami akan segera mengkonfirmasi data yang anda kirim. Informasi selanjutkan akan kami sampaikan melalui email anda.';


 	header('location:index.php');

?>