$Body = @{
  "Title" = "Automated test message"
  "Text" = "This message is composed through a Powershell script and scheduled through Azure DevOps"   
}

$JsonBody = ConvertTo-Json -Compress -InputObject $Body

Invoke-WebRequest -Body $JsonBody -Method POST -Uri 'https://insertwebhook.urihere'