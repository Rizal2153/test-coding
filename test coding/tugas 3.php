<?php 

    require_once('connection.php');
    
    if(empty($_GET)){
    $sql = "SELECT * FROM pasien";
    $query = mysqli_query( $connection, $sql );
    while($data = mysqli_fetch_array($query)) {
            
            $item[] = array(
                'nama_pasien' =>$data["nama_pasien"],
                'tanggal_register'=>$data["tanggal_register"]
            );
        }

        $response = array (
            'status'=>'OK',
            'data'=>$item
        );

        echo json_encode($response);
    } else{
        $sql = "SELECT * FROM pasien";
        $query = mysqli_query( $connection, $sql );
        while($data = mysqli_fetch_array($query)) {
            
            $item[] = array(
                'nama_pasien' =>$data["nama_pasien"],
                'tanggal_register'=>$data["tanggal_register"]
            );
        }

        $response = array (
            'status'=>'OK',
            'data'=>$item
        );
    }

?>

