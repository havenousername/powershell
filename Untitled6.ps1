if($args.Count -eq 0){
    Write-Output "Enter a parameter"
}else{
    if( (Test-Path $args) -and ($args.Length -eq 1) ){
       $file = @()
       $words = @()
       $file=Get-Content $args[0]
       $words = $file.Split()
       [int32]$sum = 0
       for($i=0; $i -lt $words.Count;$i++ ){
            $sum +=$words[$i].Length
       }
       Write-Output ($sum / $words.Count)

    }else{
        Write-Output "Please enter three parameters."
        Write-Output "One is filename and other is the string you are looking for, last output file"
    }
   
}