<?php 
    
    $host         = "localhost";
    $username     = "root";
    $password     = "";
    $dbname       = "test_ajax";
    
    $result_array = array();
 
    $conn = new mysqli($host, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection to database failed: " . $conn->connect_error);
    }
    
    $sql = "SELECT id, title, auther, pages, image FROM books ";
    
    $result = $conn->query($sql);
  
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            array_push($result_array, $row);
        }
    }
    
    header('Content-Type: application/json');
    echo json_encode($result_array);
    
    $conn->close();
