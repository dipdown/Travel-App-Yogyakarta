<?php 

class database{

	public $_host = "localhost";
		public $_username = "gojogjak_arta";
		public $_password = "%Ilham18";
		public $_database = "gojogjak_arta";
		public $_connection;

	
		public function getConnection() {
			$this->_connection = new mysqli($this->_host, $this->_username, 
											$this->_password, $this->_database);
			if ($this->_connection->connect_errno) {
				return $this->_connection->connect_errno;
			}
				return $this->_connection;
		}

	}

	


?>