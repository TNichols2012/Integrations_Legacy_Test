<?php

function isDate($in_Date) {
	$bln_Valid = TRUE;
	// check format mm/dd/yyyy
	if(!ereg ("^[0-9]{2}/[0-9]{2}/[0-9]{4}$", $in_Date)) {
		$bln_Valid = FALSE;
	}
	else {
		$arr_Date = explode("/", $i_sDate); // break up date by slash
		$int_Day = $arrDate[0];
		$int_Month = $arrDate[1];
	  
		$int_Year = $arrDate[2];
		$int_IsDate = checkdate($int_Month, $int_Day, $int_Year);
		if(!$int_IsDate){
		        $bln_Valid = FALSE;
		} // end if(!$int_IsDate)
	} //end else 
	return ($bln_Valid);
} // end function isDate()



?>
