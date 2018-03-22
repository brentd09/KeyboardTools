function Get-Keypress {
  if (($host).Name -eq 'ConsoleHost') {
    do {
      Write-Host "Press any key to continue, [ESC] to Exit..."
      $KeyObj = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
      $KeyObj
    } until ($KeyObj.VirtualKeyCode -eq 27)
  }
}
