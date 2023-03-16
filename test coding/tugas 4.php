<?php 

require_once('connection.php');

if(empty($_GET)){
$sql = "SELECT * FROM pasien, ruangan";
$query = mysqli_query( $connection, $sql );
while($data = mysqli_fetch_array($query)) {
        
        $item[] = array(
            'id' =>$data['ID'],
            'nama_ruangan' =>$data["nama_ruangan"],
            'jumlah_pasien'=>$data["nama_ruangan"],
            'no_rec' =>$data['no_rec'],
            'status_enable' =>$data['status_enable'],
            'jenis_kelamin' =>$data['jenis_kelamin'],
            'tanggal_register' =>$data['tanggal_register'],
            'no_cm' =>$data['no_cm'],
            'no_cmfk' =>$data['no_cmfk'],
            'no_registrasi' =>$data['no_registrasi'],
            'nama_ruangan' =>$data['nama_ruangan'],
            'nama_pasien' =>$data['nama_pasien'],
            'kelompok_pasien' =>$data['kelompok_pasien'],
            'nama_rekanan' =>$data['nama_rekanan'],
            'nama_dokter' =>$data['nama_dokter'],
            'tanggal_pulang' =>$data['tanggal_pulang'],
            'status_pasien' =>$data['status_pasien'],
            'norec_pa' =>$data['norec_pa'],
            'objekasuransi_pasien' =>$data['objekasuransi_pasien'],
            'pg_id' =>$data['pg_id'],
            'objectasuransi_last' =>$data['objectasuransi_last'],
            'no_sep' =>$data['no_sep'],
            'norec_br' =>$data['norec_br'],
            'nostruk_last' =>$data['nostruk_last'],
            'no_reservasi' =>$data['no_reservasi'],
            'kelas_ditanggung' =>$data['kelas_ditanggung'],
            'nama_kelas' =>$data['nama_kelas'],
            'tanggal_lahir' =>$data['tanggal_lahir'],
            'object_departemen' =>$data['object_departemen'],
            'object_kelas' =>$data['object_kelas'],
            'dept_id' =>$data['dept_id'],
            'ppk_rujukan' =>$data['ppk_rujukan'],
            'istel_medicine' =>$data['istel_medicine'],
            'jaminan_khusus' =>$data['jaminan_khusus'],
            'no_identitas' =>$data['no_identitas'],
            'status_schedule' =>$data['status_schedule'],
            'is_diagnosis' =>$data['is_diagnosis']
        );
    }

    $response = array (
        'status'=>'OK',
        'data'=>$item
    );

    echo json_encode($response);
} else{
    $sql = "SELECT * FROM pasien, ruangan ";
    $query = mysqli_query( $connection, $sql );
    while($data = mysqli_fetch_array($query)) {
        
        $item[] = array(
            'id' =>$data['ID'],
            'nama_ruangan' =>$data["nama_ruangan"],
            'jumlah_pasien'=>$data["nama_ruangan"],
            'no_rec' =>$data['no_rec'],
            'status_enable' =>$data['status_enable'],
            'jenis_kelamin' =>$data['jenis_kelamin'],
            'tanggal_register' =>$data['tanggal_register'],
            'no_cm' =>$data['no_cm'],
            'no_cmfk' =>$data['no_cmfk'],
            'no_registrasi' =>$data['no_registrasi'],
            'nama_ruangan' =>$data['nama_ruangan'],
            'nama_pasien' =>$data['nama_pasien'],
            'kelompok_pasien' =>$data['kelompok_pasien'],
            'nama_rekanan' =>$data['nama_rekanan'],
            'nama_dokter' =>$data['nama_dokter'],
            'tanggal_pulang' =>$data['tanggal_pulang'],
            'status_pasien' =>$data['status_pasien'],
            'norec_pa' =>$data['norec_pa'],
            'objekasuransi_pasien' =>$data['objekasuransi_pasien'],
            'pg_id' =>$data['pg_id'],
            'objectasuransi_last' =>$data['objectasuransi_last'],
            'no_sep' =>$data['no_sep'],
            'norec_br' =>$data['norec_br'],
            'nostruk_last' =>$data['nostruk_last'],
            'no_reservasi' =>$data['no_reservasi'],
            'kelas_ditanggung' =>$data['kelas_ditanggung'],
            'nama_kelas' =>$data['nama_kelas'],
            'tanggal_lahir' =>$data['tanggal_lahir'],
            'object_departemen' =>$data['object_departemen'],
            'object_kelas' =>$data['object_kelas'],
            'dept_id' =>$data['dept_id'],
            'ppk_rujukan' =>$data['ppk_rujukan'],
            'istel_medicine' =>$data['istel_medicine'],
            'jaminan_khusus' =>$data['jaminan_khusus'],
            'no_identitas' =>$data['no_identitas'],
            'status_schedule' =>$data['status_schedule'],
            'is_diagnosis' =>$data['is_diagnosis']
        );
    }

    $response = array (
        'status'=>'OK',
        'data'=>$item
    );
}

?>

