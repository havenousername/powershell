[string]$str = ""
for($i= 1; $i -le 10; $i++){
    for($k= 1; $k -le 10; $k++){ 
         [string]$str += ($i*$k) 
         $str += " " 
    }
    $str += "`n"
}

Write-Output $str