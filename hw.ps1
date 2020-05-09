if($args.Count -eq 0){
    Write-Output "Enter a parameter"
}else{
    if( (Test-Path $args) -and ($args.Length -eq 3) ){
       $file = @()
       $words = @()
       $out = @()
       $file=Get-Content $args[0]
       $output=$args[2]
       $subStr=$args[1]
       $words += $file.Split() 
       for($i=0; $i -lt $words.Length;$i++ ){
        if($words[$i] -match $subStr){
          $out += $words[$i]     
        }
       }
       [string]$out | Set-Content $output 

    }else{
        Write-Output "Please enter three parameters."
        Write-Output "One is filename and other is the string you are looking for, last output file"
    }
   
}

