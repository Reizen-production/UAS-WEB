<?php
if($this->session->userdata('level') == 'Penjaga')
{
 echo "<ul style='float:left;'>
			<li>Hi ".$this->session->userdata('nama')."</li>
		</ul>
		<ul>
			<li><a href='".site_url('welcome/logout')."'>Logout</a></li>
		</ul>";

}
else{
	echo "Welcome to Loket ".$instansi->instansi; 
}
?>
