<?php

session_start();
$con = mysqli_connect("localhost","root","","ecommerce");

if($_SERVER["REQUEST_METHOD"]=="POST"){
    if(isset($_POST['submit'])){
        if(isset($_SESSION['status'])){
            $check_product = array_column( $_SESSION['status'],'uid');
            if(in_array($_POST['uid'],$check_product)){
                echo "
                <script>
                  alert('already respond');
                  window.location.href = 'purchasedetails1.php';
                </script>
              
              ";
            }
            else{
                $count=count($_SESSION['status']);
                $_SESSION['status'][$count]=array('uid' => $_POST['uid'],'uname' => $_POST['uname'],'unumber'=> $_POST['unumber'], 
                    'uaddress' => $_POST['uaddress'], 'umode'=>$_POST['umode']);
                echo"
               <script>
               alert('product  added');
                window.location.href = 'viewstatus1.php';
                </script>                 
                                                
                ";
                
            }
        }
        else{
            $_SESSION['status'][0] = array('uid' => $_POST['uid'],'uname' => $_POST['uname'],'unumber'=> $_POST['unumber'], 
            'uaddress' => $_POST['uaddress'], 'umode'=>$_POST['umode']);
            echo"
            <script>
             alert('product  added');
             window.location.href = 'viewstatus1.php';
             </script>                 
                                           
            ";
            
        }

       
    }
   
}
?>