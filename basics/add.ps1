if($args -eq 2)
{
    write-host($val1-$val2)
    $v=$val1*$val2
    write-host $v
}
else{
    write-host "I need two parameters"
}