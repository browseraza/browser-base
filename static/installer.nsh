!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "Browseraza" "Software\Clients\StartMenuInternet\Browseraza\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\Browseraza" "" "Browseraza HTML Document"
  WriteRegStr SHCTX "SOFTWARE\Classes\Browseraza\Application" "AppUserModelId" "Browseraza"
  WriteRegStr SHCTX "SOFTWARE\Classes\Browseraza\Application" "ApplicationIcon" "$INSTDIR\Browseraza.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Browseraza\Application" "ApplicationName" "Browseraza"
  WriteRegStr SHCTX "SOFTWARE\Classes\Browseraza\Application" "ApplicationCompany" "Browseraza"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Browseraza\Application" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Browseraza\DefaultIcon" "DefaultIcon" "$INSTDIR\Browseraza.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Browseraza\shell\open\command" "" '"$INSTDIR\Browseraza.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "Browseraza" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "Browseraza" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza" "" "Browseraza"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\DefaultIcon" "" "$INSTDIR\Browseraza.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\Capabilities" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\Capabilities" "ApplicationName" "Browseraza"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\Capabilities" "ApplicationIcon" "$INSTDIR\Browseraza.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\Capabilities\FileAssociations" ".htm" "Browseraza"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\Capabilities\FileAssociations" ".html" "Browseraza"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\Capabilities\URLAssociations" "http" "Browseraza"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\Capabilities\URLAssociations" "https" "Browseraza"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\Capabilities\StartMenu" "StartMenuInternet" "Browseraza"
  
  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\InstallInfo" "IconsVisible" 1
  
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza\shell\open\command" "" "$INSTDIR\Browseraza.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\Browseraza"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\Browseraza"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "Browseraza"
!macroend