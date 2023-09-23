<?php
    echo $id=$_GET['ID'];
    include 'Config.php';
    mysqli_query($con,"DELETE FROM `tblproduct1` WHERE id=$id");
    header("location:index1.php")

?>