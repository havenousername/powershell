if($args -eq 0){
    Write-Output "Please enter at least one parameter"
}else{
    $f = @()
    $input = $args[0]
    $t1 = 0
    $t2 = 1
    for($i=0; $i -lt $input; $i++){
        if($i -eq 0){
           $f += $t1
        }
        if($i -eq 1){
            $f += $t2
        }else{
            $next = $t1 + $t2
            $t1 = $t2
            $t2 = $next
            $f += $next
        }
    }
    for($i=0; $i -lt $f.Length; $i++){
        if($f[$i] -lt $input){
            Write-Output $f[$i]
        }
    }
    
    
    
}