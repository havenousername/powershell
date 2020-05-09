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
            $splited=$cont[$i].Split()
            Write-Host $splited[1] $splited[0]
        }
    }else{
        Write-Output "Error"
    }
}
