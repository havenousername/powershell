
if($args -eq 2)
{
    $val1 = $args[0]
    $val2 = $args[1]
    $v=$val1*$val2
    write-host $v
}
else{
    write-host "I need two parameters"
}