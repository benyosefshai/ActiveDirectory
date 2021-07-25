#User First Name Input
[String] $userFirstName = Read-Host "Please enter User first name"

#User Last Name Input
[String] $userLastName = Read-Host "Please enter User last name"

Write-Host "The User AD active accounts:"  (((Get-ADUser -Filter "GivenName -eq '$userFirstName' -and Surname -eq '$userLastName'")| where Enabled -eq True).Count)

(Get-ADUser -Filter "GivenName -eq '$userFirstName' -and Surname -eq '$userLastName' "  |WHERE Enabled -EQ Ture  |select  samaccountname)