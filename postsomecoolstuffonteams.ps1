$Body = @{
  "Title" = "Automated test message"
  "Text" = "This message is composed through a Powershell script and scheduled through Azure DevOps. With image in body <img src='https://www.w3schools.com/images/w3schools_green.jpg'>"
  }

$JsonBody = ConvertTo-Json -Compress -InputObject $Body

Invoke-WebRequest -Body $JsonBody -Method POST -Uri 'https://insertwebhook.urihere'