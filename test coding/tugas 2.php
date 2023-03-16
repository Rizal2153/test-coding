<?php 

    require_once('connection.php');
    
    if(empty($_GET)){
    $sql = "SELECT * FROM pasien";
    $query = mysqli_query( $connection, $sql );
    while($data = mysqli_fetch_array($query)) {
            
            $item[] = array(
                'nama_pasien' =>$data["nama_pasien"],
            );
            $nama = count($item);
        }

        $response = array (
            'status'=>'OK',
            'data'=>$item,
            'nama'=>$nama
        );

        echo json_encode($response);
    } else{
        $sql = "SELECT * FROM pasien";
        $query = mysqli_query( $connection, $sql );
        while($data = mysqli_fetch_array($query)) {
            
            $item[] = array(
                'nama_pasien' =>$data["nama_pasien"],
            );
            $nama = count($item);
        }

        $response = array (
            'status'=>'OK',
            'data'=>$item,
            'nama'=>$nama
        );
    }

?>

