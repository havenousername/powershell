#param([string]$fname)
if ($args.Count -eq 0){
    Write-Output "Give a parameter!"
}else{
    $fname=$args[0]
    if(Test-Path $fname){
        $number=1
        $cont=@()
        $cont+=Get-Content $fname
        for($i=0; $i -lt $cont.Length; $i++){
            $cont[$i].Replace(" at ","@").Replace(" dot ", ".")
            # $cont = $cont[$i].Replace(" at ","@")
            # $cont = $cont[$i].Replace(" dot ",".")
        }
    }else{
        Write-Output "Error"
    }
}
