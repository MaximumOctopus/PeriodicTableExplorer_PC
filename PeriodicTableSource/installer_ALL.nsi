; Periodic Table Installer (1.0)
;
;--------------------------------------------------------------------------

XPStyle on

AddBrandingImage top 52

!macro BIMAGE IMAGE PARMS
	Push $0
	GetTempFileName $0
	File /oname=$0 "${IMAGE}"
	SetBrandingImage ${PARMS} $0
	Delete $0
	Pop $0
!macroend

Icon images\installer.ico
UninstallIcon images\uninstall.ico

; The name of the installer
Name "PAF Periodic Table v4.0 beta"

; The file to write
OutFile "ptinstaller_extra.exe"

; The default installation directory
InstallDir "$PROGRAMFILES\MaximumOctopus\Periodic Table"

;Get installation folder from registry if available
InstallDirRegKey HKCU "Software\PTMO" ""

ShowInstDetails show

LicenseText "License Info"
LicenseData "readme.txt"

;--------------------------------------------------------------------------

; Pages

Page license licenseImage
Page directory
Page instfiles

UninstPage uninstConfirm
UninstPage instfiles

;--------------------------------------------------------------------------

; The stuff to install
Section "" ;No components page, name is not important

  ; root dir ------------------------------------------
  SetOutPath $INSTDIR

  WriteUninstaller "NoPT.exe"

  ; Put main executable there
  File pte_portable\ADPT.exe
  File pte_portable\pt_explorer.exe
  File pte_portable\readme.txt

  ; important data
  SetOutPath $INSTDIR\data
  File /r pte_portable\data\*.*
  
  ;SetOutPath $INSTDIR\layouts
  ;File /r pte_portable\layouts\*.*    
  
  SetOutPath $INSTDIR\pte_data
  File /r pte_portable\pte_data\*.*    

  ; --------------------------------------------------

  CreateDirectory "$SMPROGRAMS\MaximumOctopus\Periodic Table"

  SetOutPath $INSTDIR

  CreateShortCut "$SMPROGRAMS\MaximumOctopus\Periodic Table\Periodic Table.lnk" "$INSTDIR\ADPT.exe"
  CreateShortCut "$SMPROGRAMS\MaximumOctopus\Periodic Table\Read Me.lnk" "$INSTDIR\readme.txt"
  CreateShortCut "$DESKTOP\Periodic Table.lnk" "$INSTDIR\ADPT.exe"
  CreateShortCut "$DESKTOP\Periodic Table Explorer.lnk" "$INSTDIR\pt_explorer.exe"  
  CreateShortCut "$SMPROGRAMS\MaximumOctopus\Periodic Table\Uninstall Periodic Table.lnk" "$INSTDIR\NoPT.exe"
SectionEnd ; end the section

Function licenseImage
	!insertmacro BIMAGE "images\periodictable.bmp" ""
FunctionEnd

; Uninstaller

UninstallText "This will uninstall the MaximumOctopus Periodic Table v4.0 beta Hit Next to proceed."

Section "Uninstall"
  Delete "$SMPROGRAMS\MaximumOctopus\Periodic Table\Periodic Table.lnk" 
  Delete "$SMPROGRAMS\MaximumOctopus\Periodic Table\Read Me.lnk" 
  Delete "$DESKTOP\Periodic Table.lnk"
  Delete "$DESKTOP\Periodic Table Explorer.lnk"
  Delete "$SMPROGRAMS\MaximumOctopus\Periodic Table\Uninstall Periodic Table.lnk"

  Delete $INSTDIR\NoPT.exe ; delete self
  RMDir /r $INSTDIR
  RMDir /r "$SMPROGRAMS\MaximumOctopus\Periodic Table"
SectionEnd