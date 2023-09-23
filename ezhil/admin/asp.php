<?php
require_once 'vendor/autoload.php';
if(isset($_POST['sent'])){

	$receiver = $_POST['uname'];
	$mobile = '+91'.$_POST['unumber'];
	$msg = $_POST['message'];


	
	$messagebird = new MessageBird\Client('BicUehhS2e3CrSYlIMI98pGVV');
	$message = new MessageBird\Objects\Message;
	$message->originator = '+918754215198';
	$message->recipients = [ $mobile ];
	$message->body = $msg;
	$response = $messagebird->messages->create($message);
	var_dump($response);

    echo "
    <script>
        alert('notified');
        window.location.href = 'viewstatus.php';
    </script>
    ";
}
?>