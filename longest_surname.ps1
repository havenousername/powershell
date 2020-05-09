if ($args.Count -eq 0)
{
    Write-Output "I need a parameter"
}
else
{
    if ((Test-Path $args[0]) -and ($args.Length -eq 3) -and (Test-Path $args[2]))
    {
        $out=@()
        $file = Get-Content $args[0]
        $output = $args[2]
        foreach ($line in $file)
        {
            $out+=($line.Split()[0])
            
        }
        $out2 = @()
        for ($i=0; $i -lt $out.Length; $i++)
        {
            if ($out[$i].Length -gt $args[1])
            {
                $out2 += $out[$i]
            }
        }
        $out2 | Set-Content $output
    }else{
        Write-Output "Error. No file or other parameter" 
    }
    #$out > $output
}