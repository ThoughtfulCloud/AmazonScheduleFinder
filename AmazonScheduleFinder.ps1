#Use below to assign Execution Policy.  Make sure to run below in separate PowerShell App as Admin
#Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser  
#Use below to unassign Execution Policy.  Make sure to run below in separate PowerShell App as Admin
#Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser  

#Begin Main Script
Write-Host "Running Delivery Me Scanning, Please Wait...."
$UrlToScan = 'https://www.amazon.com/gp/buy/shipoptionselect/handlers/display.html?hasWorkingJavascript=1'
$divIdName = 'shipoption-select'
$ie = New-Object -com internetexplorer.application;
$ie.visible = $true;
$ie.navigate($UrlToScan);
while($ie.busy) {start-sleep 1}
$html = $ie.Document.body.innerHTML 
$search = $ie.document.getElementById("shipoption-select").innerHTML


while(0 -lt 1){
    Write-Host "Searching at: "(get-date).ToString('T')
    $ie.navigate($UrlToScan);
    if($search -match "No Delivery Windows Available"){
        Write-Host "No Schedule Found"
    }ElseIf($search -cmatch "AM"){
        Write-Host "Morning Schedule Found at: "(get-date).ToString('T')
        [console]::beep()
        [console]::beep()
    }
    ElseIf($search -cmatch "PM"){
        Write-Host "PM Schedule Found at: " (get-date).ToString('T')
        [console]::beep()
        [console]::beep()
    }

    Start-Sleep -Seconds 300
}
