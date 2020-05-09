if($args -eq 0){
    Write-Output "Please enter at least one parameter"
}else{
    [int32]$dec=$args[0]
    $arr = @()
    $str=""
    while($dec -gt 0){
        $arr += ([int32]($dec % 2))
        $dec = ([int32]($dec / 2))
    }
    for($i= ($arr.Length - 1); $i -ge 0; $i--){
       [string]$str += $arr[$i]
    }
    Write-Output $str
}