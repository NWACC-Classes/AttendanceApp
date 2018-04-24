<?php

error_reporting(E_ALL & ~E_NOTICE);
		
class DB {

	const DB_SERV = "192.168.64.2"	;
	const DB_USER = "standard"		;
	const DB_PASS = "4321"			;
	const DB_NAME =	"meeting_app"	;
	
	protected $__conn;

	function __construct() {
    	// Create connection
		$this->conn = mysqli_connect(self::DB_SERV, self::DB_USER, self::DB_PASS, self::DB_NAME);

		// Check connection
		if ($this->conn->connect_error) {
    		die("Connection failed: " . $this->conn->connect_error);
		} 
	}

	function __destruct() {
    	$this->conn->close();
	}   
    
	function execute($sql = null){	
		//Execute SQL
		$q = mysqli_query($this->conn, $sql );	
		
		if ( empty($this->conn->error) ) {		
			if ( $q->num_rows > 0 || 1==1){
				 $q->data_seek(0);
				 while( $row = $q->fetch_assoc()) $data[] = $row;
			}
    		$this->result("success", "transaction executed", mysqli_num_rows($q));
		} else {
			$this->result("error",    $this->conn->error  );   	
		}
	}
	
	function result($status, $msg =null, $data = null) {
	
									$json[ 'status']= $status;
		if ( ! empty( $msg ) 	)	$json[ 'msg' ]	= $msg;
		if ( ! empty( $data ) 	)	$json[ 'data' ]	= $data;

		$encoded	= json_encode( $json, JSON_UNESCAPED_SLASHES, JSON_PRETTY_PRINT );
		$etag		= md5( $encoded ); 

		if ( isset( $_SERVER[ 'HTTP_IF_NONE_MATCH' ] ) && trim( $_SERVER[ 'HTTP_IF_NONE_MATCH' ] ) == $etag ) {
			
			exit( header( $_SERVER[ 'SERVER_PROTOCOL' ] . " 304 Not Modified" ) ); 
		
		} else if ( ! headers_sent() ) {
			header( "Content-Type: application/json; charset=UTF-8" );
			header( "Cache-control: private, max-age=1" );
			header( "Accept-Ranges: bytes" );
			header( "Last-Modified: " . gmdate( "D, d M Y H:i:s", time() ) . " GMT" );
			header( "Etag: " . $etag ); 
			header( "Content-Length: ".strlen( $encoded ) );
		}

		exit( $encoded );

	}	
}

$_db = new DB();
$result = $_db->execute("SELECT*FROM user");


print_r($result);
	
?>
