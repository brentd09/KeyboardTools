function Get-Keypress {
  do {
    Write-Host "Press any key to continue..."
    $KeyObj = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    $KeyObj
  } until ($KeyObj.VirtualKeyCode -eq 27)
}
