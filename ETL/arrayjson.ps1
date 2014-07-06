Function ParseBadJSON_Small ($file)
{
    $f = Get-Content $file
    $new_content = "}" + [Environment]::NewLine + "{"
    $f = $f.Replace("},{",$new_content).Replace("[","").Replace("]","")
    $f | Out-File -FilePath $file -Encoding UTF8 -Force
}

ParseBadJSON_Small -file "C:\files\JSON\file.json"
