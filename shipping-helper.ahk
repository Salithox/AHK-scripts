#SingleInstance,force

;~ Notes to self to add into GUI
;~ folder for NFO matrixs, Yellow Paper Printerout, Sign in logs, Distrobution logs,

;==============================================================================================

;~ Check_ForUpdate(1,0)


;GUI section

	;Main page GUI
Gui1:
Gui,1:Add,Button,x5 y3 w80 h45 gprinter1,Printer Script
Gui,1:Add,Button,x100 y3 w80 h45 gSprinter1,Stop Printer
Gui,1:Add,Button,x5 y53 w80 h45 gple1,BLS script
Gui,1:Add,Button,x100 y53 w80 h45 gSple1,Stop script
Gui,1:Add,Button,x5 y104 w80 h45 gGui2,Carrier Code
Gui,1:Add,Button,x100 y104 w80 h45 gGui3,Shipping Links
Gui,1:Add,Button,x190 y3 w80 h45 ggui4, SAP Setup Info
Gui,1:Add,Button,x5 y155 w80 h45 ggui5, Routing `nguides`
Gui,1:Add,Button,x100 y155 w80 h45 ggui6,Blue Star

Gui,1:add,text,x370 y230 , Commonly used Carriers.
Gui, 1:Add, DropDownList, x365 y250 w140 h150 vDDL,  FedEx-Express||UPS|Blue-Star|DGF|IAS|Will-Call|
Gui, 1:Add,Button,x515 y240 w52 h35 glookup1, View Code

Gui,1:Add,text,x365 y280, Commonly used box dims.
Gui, 1:Add, DropDownList, x365 y300 w140 h150 vDDL2, J-sleeve-8||J-Sleeve-4|D-Container|Wafer-box|Multi-pack|Reticles|Mimasu-skycubes|
Gui, 1:Add,Button,x515 y300 w52 h35 glookup2, View Dims

Gui,1:Add,Button,x365 y175 w80 h45 gstart-all,Start all `nscripts`
Gui,1:Add,Button,x450 y175 w80 h45 gstop-all,Stop all `nscripts`
Gui,1:Add,MonthCal,x366 y2 w225 h160,MonthCal

Gui,1:Add,Button,x480 y395 w52 h32 gChangelog, Change Log
Gui,1:Add,Button,x425 y432 w52 h27 gupdate, Update
Gui,1:Add,Button,x480 y432 w52 h27 gAbout, About
Gui,1:Add,Button,x536 y432 w52 h27 gexit1,Exit

Gui,1:font, cblue s10
Gui,1:Add,text,x273 y6, Blue Star `nMon,Wed,Fri.`  `nABQ, Everyday`

Gui,1:Show, x535 y234 w594 h461 , Shipping Helper
Return

	;Carrier page GUI
Gui2:
Gui, 1:Destroy
Gui, 2:Add,Button,x4 y3 w80 h45 gCarrier1,Carrier Codes
Gui, 2:Add,Button,x100 y3 w80 h45 gSCarrier1, Stop Codes
Gui,2:Add,Button,x190 y3 w80 h45 gbarcode1, Open PDF`nOf Barcodes`
Gui, 2:Add, DropDownList, x5 y53 w140 h150 vDDL,  FedEx-Express*||UPS*|FedEx-Ground|DHL-Express|FedEx-Hazmat|Blue-Star*|DGF*|EXEL|Courier-Network|Siff|SAIY|IAS*|Panalpina|KWE|NNR|AEI|UVLN|CEVA|Hand-Carry|Will-Call*|Vender-Pickup|RDWY|
Gui, 2:Add,Button,x150 y53 w52 h35 glookup1, View Code

Gui, 2:Add,Button,x536 y432 w52 h27 gexit1, Exit
Gui, 2:Add,Button,x480 y432 w52 h27 gback1, Back
Gui, 2:Show, X535 y234 w594 h461 , Shipping Helper
return

	;Links page GUI
Gui3:
Gui, 1:Destroy
Gui,3:Add,Button,x5 y3 w80 h45 gmdts1,MTDS
Gui,3:Add,Button,x100 y3 w80 h45 gistart1,I-Start
Gui,3:Add,Button,x5 y53 w80 h45 gcircuit1,Circuit
Gui,3:Add,Button,x100 y53 w80 h45 gschenker1,Schenker-main
Gui,3:Add,Button,x5 y104 w80 h45 gSlearn1,Schenker`nlearning`
Gui,3:Add,Button,x100 y104 w80 h45 gsira1,Sira
Gui,3:Add,Button,x190 y3 w80 h45 gimprint1,Imprint
Gui,3:Add,Button,x190 y53 w80 h45 gintellearn1, Intel-Learning
Gui,3:Add,Button,x190 y104 w80 h45 gwiings1, Wiings
Gui,3:Add,Button,x280 y3 w80 h45 gshuttle1, Intel-Shuttle
GUi,3:Add,Button,x280 y53 w80 h45 gadp1, ADP
Gui,3:Add,Button,x280 y104 w80 h45 gBLSP, BLS `nProspal`
Gui,3:Add,Button,x370 y3 w80 h45 gShippingfolder, Shipping `nFolder`
Gui,3:Add,Button,x370 y53 w80 h45 gHandbills,Handway `nBills`
Gui,3:Add,Button,x370 y104 w80 h45 gSupplies1, Supplies folder
Gui,3:Add,Button,x455 y3 w80 h45 gDLlogs, Disturbution logs
Gui,3:Add,Button,x455 y53 w80 h45 gSSignin, Shipment log
gui,3:Add,Button,x455 y104 w80 h45 gDsignin, Driver Sign in log
Gui,3:Add,Button,x455 y155 w80 h45 gStopl, Yellow Stop Paper

Gui, 3:Add,Button,x536 y432 w52 h27 gexit1, Exit
Gui, 3:Add,Button,x480 y432 w52 h27 gback1, Back
Gui, 3:Show, X535 y234 w594 h461 , Shipping Helper
Return

;SAP GUI
Gui4:
gui,1:destroy
Gui,4:Add,Button,x5 y3 w80 h45 gSaplink, Sap links
Gui,4:Add,Button,x100 y3 w80 h45 gSap-profile, Sap Profile
Gui,4:Add,Button,x190 y3 w80 h45 gsap-printer, Sap Printer Name
Gui,4:Add,Button,x5 y53 w80 h45 geamaccess,EAM access list

Gui, 4:Add,Button,x536 y432 w52 h27 gexit1, Exit
Gui, 4:Add,Button,x480 y432 w52 h27 gback1, Back
Gui, 4:Show, X535 y234 w594 h461 , Shipping Helper
Return

	;Routing GUI
Gui5:
Gui,1:Destroy
Gui,5:Add,Button,x5 y25 w80 h45 gAFO, AFO `nRouting`


Gui,5:Add,Button,x350 y25 w80 h45  gIrelandr, Ireland `nRounting`
Gui,5:Add,Button,x350 y75 w80 h45 gChinag, China Guide
Gui,5:Add,Button,x350 y125 w80 h45 gIpaperwork, Copies of `nInternational paperwork`
Gui,5:Add,Button,x350 y175 w80 h45 gAfterHoursGuide1, AfterHours Guide

Gui, 5:Add,Button,x536 y432 w52 h27 gexit1, Exit
Gui, 5:Add,Button,x480 y432 w52 h27 gback1, Back

Gui,5:Font, cred s12
Gui,5:Add,text, x350 y3,International shipments.
Gui,5:Font, cgreen s12
Gui,5:Add,text, x5 y3, Domestic shipments

Gui, 5:Show, X535 y234 w594 h461 , Shipping Helper
return

	;Bluestar GUI
Gui6:
GUI, Destroy
SplashTextOn,200,100,Blue Star Days,Blue Star for SFO-PDX is on Monday, Wednesday, Friday. `n ABQ  is every weekday.`
;~ sleep, 8000 
SplashTextOff

Gui,6:Add,Button,x5 y3 w80 h45 gseal-log, Seal log
Gui,6:Add,Button,x100 y3 w80 h45 gseal-sheet, Seal sheet `nfor Truck`
Gui,6:Add,Button,x5 y53 w80 h45 gtally-sheet, Tally sheet
Gui,6:Add,Button,x100 y53 w80 h45 gCheckBlue, Truck Check List


Gui,6:Add,Button,x510 y375 w80 h45 gBlueFolder, Blue Star Folder
Gui,6:font, cblue s10
Gui,6:Add,text,x273 y6, Blue Star `nMon,Wed,Fri.`  `nABQ, Everyday.`
Gui,6:Add,MonthCal,x366 y2 w225 h160,MonthCal
Gui, 6:Add,Button,x536 y432 w52 h27 gexit1, Exit
Gui, 6:Add,Button,x480 y432 w52 h27 gback1, Back
Gui, 6:Show, X535 y234 w594 h461 , Shipping Helper
return

;==============================================================================================

;==============================================================================================

;Subrutines 

;DropDown List codes========================================================= =======================

lookup1:
Gui, Submit
GoSub %DDL%
return

lookup2:
Gui, Submit
GoSub %DDL2%
return



J-sleeve-8:
Gui, Destroy
MsgBox, %DDL2% = 48x40x45
gosub, gui1
return

J-sleeve-4:
Gui, Destroy
MsgBox, %DDL2% = 48x40x27
gosub, gui1
return

D-Container:
Gui, Destroy
MsgBox, %DDL2% = 58x41x45
gosub, gui1
return

Wafer-box:
Gui, Destroy
MsgBox, %DDL2% = 24x20x21
gosub, gui1
return

Multi-pack:
Gui, Destroy
MsgBox, %DDL2% = 32x40x22
gosub, gui1
return

Reticles:
Gui, Destroy
MsgBox, %DDL2% = 18x18x18
gosub, gui1
return

Mimasu-skycubes:
Gui, Destroy
MsgBox, %DDL2% = 48x45x42
gosub, gui1
return


FedEx-Express*:
MsgBox, %DDL% = 1000018073 `nShortcut = FM` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000018073
GoSub, Gui2
return

FedEx-Express:
MsgBox, %DDL% = 1000018073 `nShortcut = FM` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000018073
GoSub, Gui1
return

FedEx-Ground:
MsgBox, %DDL% = 1000053113 `nShortcut = FDGD` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000053113
GoSub, Gui2
return

FedEx-Hazmat:
MsgBox, %DDL% = 1000002268 `nShortcut = FMHAZ ` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000002268
GoSub, Gui2
return

UPS*:
MsgBox, %DDL% = 1000019237 `nShortcut = UPS` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000019237
GoSub, Gui2
return

UPS:
MsgBox, %DDL% = 1000019237 `nShortcut = UPS` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000019237
GoSub, Gui1
return

Will-Call*:
MsgBox, %DDL% = 1000049996 `nShortcut = WC` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000049996
GoSub, Gui2
return

Will-Call:
MsgBox, %DDL% = 1000049996 `nShortcut = WC` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000049996
GoSub, Gui1
return

Vender-Pickup:
MsgBox, %DDL% = 1000049997 `nShortcut = VP` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000049997
GoSub, Gui2
return

DHL-Express:
MsgBox, %DDL% = 1000008110 `nShortcut = DHX` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000008110
GoSub, Gui2
return

Blue-Star*:
MsgBox, %DDL% = 1000018173 `nShortcut = BLU` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000018173
GoSub, Gui2
return

Blue-Star:
MsgBox, %DDL% = 1000018173 `nShortcut = BLU` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000018173
GoSub, Gui1
return

DGF*:
MsgBox, %DDL% = 1000000637 `nShortcut = Danz` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000000637
GoSub, Gui2
return

DGF:
MsgBox, %DDL% = 1000000637 `nShortcut = Danz` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000000637
GoSub, Gui1
return

EXEL:
MsgBox, %DDL% = 1000015713 `nShortcut = EXEL` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000015713
GoSub, Gui2
return

Courier-Network:
MsgBox, %DDL% = 1000000839 `nShortcut = CN` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000000839
GoSub, Gui2
return

Siff:
MsgBox, %DDL% = 1000009756 `nShortcut = SIF` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000009756
GoSub, Gui2
return

SAIY:
MsgBox, %DDL% = 1000053105 `nShortcut = SAIY` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000053105
GoSub, Gui2
return

IAS*:
MsgBox, %DDL% = 1000049999 `nShortcut = IAS` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000049999
GoSub, Gui2
return

IAS:
MsgBox, %DDL% = 1000049999 `nShortcut = IAS` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000049999
GoSub, Gui1
return

Panalpina:
MsgBox, %DDL% = 1000021946 `nShortcut = PPA` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000021946
GoSub, Gui2
return

KWE:
MsgBox, %DDL% = 1000007848 `nShortcut = KWE` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000007848
GoSub, Gui2
return

NNR:
MsgBox, %DDL% = 1000013304 `nShortcut = NNR` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000013304
GoSub, Gui2
return

AEI:
MsgBox, %DDL% = 1000008059 `nShortcut = AEI` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000008059
GoSub, Gui2
return

UVLN:
MsgBox, %DDL% = 1000053063 `nShortcut = UVLN` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000053063
GoSub, Gui2
return

CEVA:
MsgBox, %DDL% = 1000053076 `nShortcut = Ceva` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000053076
GoSub, Gui2
return

Hand-Carry:
MsgBox, %DDL% = 1000049998 `nShortcut = HC` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000049998
GoSub, Gui2
return

RDWY:
MsgBox, %DDL% = 1000053111 `nShortcut = RDWY` `n Code copied to clipboard.`
Gui, Destroy
Clipboard := 1000053111
GoSub, Gui2
return


;DropDown List  codes================================================================ ================

;Links ==========================================================================================
mdts1:
Run, https://mdts.intel.com/
return

istart1:
Run, http://istart.intel.com/
return

circuit1:
Run, http://employeeportal.intel.com/
return

schenker1:
Run, https://sharepoint.amr.ith.intel.com/sites/GFM_3PL/SLIAZ/SitePages/Home.aspx
return

Slearn1:
Run, https://learning.dbschenker.com/
return

sira1:
Run, http://siravf.cps.intel.com/SiraHome.aspx
return

imprint1:
Run,https://assetrecovery.intel.com/RMSPM#/
return

intellearn1:
Run, https://intel.sabacloud.com/Saba/Web_spf/NA2PRD0003/local
Return

wiings1:
Run, http://wiings-amr.intel.com/WarehousePortal/#/Receipt/CountandVerify
return

shuttle1:
Run, http://condor.intel.com/
return

adp1:
Run, https://portal.adp.com/public/index.htm
return

BLSP:
Run, http://prospal.intel.com/#/
return

Shippingfolder:
Run, \SLI\Shipping
return

Supplies1:
Run, \SLI\Shipping\Veritiv - Unisource
return

DLlogs:
Run, \SLI\Shipping\AutoHotkey\AHK scripts\dl sheet.pdf
gosub waiting
return

SSignin:
Run, \SLI\Shipping\OC5 Shipping log.xlsx
return

Dsignin:
Run, \SLI\Shipping\OC5 Shipping\Drive sign in sign out log.xls
return

Stopl:
run, \SLI\Shipping\AutoHotkey\AHK scripts\Stop-Letter-Wafers.docx
return

;Links above ========================================================================================

;Buttons ==========================================================================================

afo:
Run, \SLI\Shipping\AFO Routing Guide
return

IrelandR:
Run, \SLI\Shipping\IRELAND
return

ChinaG:
Run, \SLI\Shipping\China Shipping
return

AfterHoursGuide1:
Run, \SLI\Shipping\Afterhours\After hours International processing\After Hours Shipping Guide.docx
return

Handbills:
Run, \SLI\Shipping\Hand waybills
return

seal-log:
Run, \SLI\Shipping\Security Seal\Security Seal log.xlsx
return

seal-sheet:
run, \SLI\Shipping\Security Seal\Security Seal Sheet.docx
return

tally-sheet:
run, \SLI\Shipping\BlueStar\TALLY SHEET.xls
return

CheckBlue:
Run, \SLI\Shipping\BlueStar\CHECKLIST.doc
return

BlueFolder:
Run, \SLI\Shipping\BlueStar\
return

Ipaperwork:
Run, S:\SLI\Shipping\AutoHotkey\AHK scripts\Internatinal paperwork.JPG
return

Changelog:
MsgBox,,Change Logs, Change Log Version 0.3: `nAdded update feature (Still in testing, works but does not pull from website while at work).` `n` `nChange Log Version 0.2:` `nAdded button control, starting and stoping all scripts.` `n` `nChange Log Version 0.1:` `nBuild the GUI for shipping.`
return

About:
MsgBox,,About Shippings Helper, Made By: Brian Doyle `nVersion: 0.5` `nCopyright: 2015-2020` `nThis is to help you with your basic needs in shipping.` `nKeep on the lookout for things that change over the year.` `nAt some point this will be obsolete.`
return

back1:
Gui,Destroy
Gosub, Gui1
return

exit1:
exitapp

start-all:
gosub, printer1
gosub, ple1
gosub, Carrier1
return

stop-all:
gosub, Sprinter1
gosub, Sple1
gosub, SCarrier1
return


Saplink:
Run, \SLI\Shipping\AutoHotkey\AHK scripts\SAP links.JPG
return

Sap-profile:
Run, \SLI\Shipping\AutoHotkey\AHK scripts\SAPSetup.JPG
return

sap-printer:
MsgBox,,,Big Printer = AZ08 `nLittle Printer = AZ07 ` `nWaybillprinter = AZ09`
return

eamaccess:
Run,  \SLI\Shipping\AutoHotkey\AHK scripts\EAMAccessrequest.docx
return

barcode1:
Run, \SLI\Shipping\AutoHotkey\AHK scripts\carriercodessheet.PDF
gosub, Waiting
return

;Stop and start scripts and exe's ===========================================================================

ple1:
run, \SLI\Shipping\AutoHotkey\AHK scripts\PLE_script.ahk
return

Sple1:
DetectHiddenWindows on
SetTitleMatchMode 2
WinClose PLE_script.ahk
return

printer1:
Run, \SLI\Shipping\AutoHotkey\AHK scripts\printer.ahk
return

Sprinter1:
DetectHiddenWindows on
SetTitleMatchMode 2
WinClose printer.ahk
return

Carrier1:
Run,  \SLI\Shipping\AutoHotkey\AHK scripts\CarrierCodes.exe
return

SCarrier1:
DetectHiddenWindows on
SetTitleMatchMode 2
WinClose CarrierCodes
Return




;Stop and start scripts and exe's ===========================================================================

;Buttons above =====================================================================================

Waiting:
GUI, Destroy
SplashTextOn,200,100,Opening PDF, Please wait while the PDF is loading.
sleep, 13000
SplashTextOff
gosub, gui1
Return









;~ Update Checker======================================================================================

update:
;~ run, www.salithoxreview.com/shipping/Version.ini
;~ run, www.salithoxreview.com/shipping/shipping-helper.exe
Check_ForUpdate(1,0)
return

Check_ForUpdate(_ReplaceCurrentScript = 1, _SuppressMsgBox = 0, _CallbackFunction = "",  ByRef _Information = "")
{
		
	;Version.ini file format - this is just an example of what the version.ini file would look like
	;
	;[Info]
	;Version=1.9
	;URL=http://www.mywebsite.com/my%20file.ahk or .exe
	;MD5=00000000000000000000000000000000 or omit this key completly to skip the MD5 file validation
	
	
		
	Static Script_Name := "shipping-helper" ;Your script name
	, Version_Number := 0.5 ;The script's version number
	, Update_URL := "https://github.com/Salithox/AHK-scripts/Version.ini" ;The URL of the version.ini file for your script
	, Retry_Count := 3 ;Retry count for if/when anything goes wrong
	
	Random,Filler,10000000,99999999
	Version_File := A_Temp . "\" . Filler . ".ini"
	, Temp_FileName := A_Temp . "\" . Filler . ".tmp"
	, VBS_FileName := A_Temp . "\" . Filler . ".vbs"
	
	Loop,% Retry_Count
	{
		_Information := ""
		
		UrlDownloadToFile,%Update_URL%,%Version_File%
		
		IniRead,Version,%Version_File%,Info,Version,N/A
		
		If (Version = "N/A"){
			FileDelete,%Version_File%
			
			If (A_Index = Retry_Count)
				_Information .= "The version info file doesn't have a ""Version"" key in the ""Info"" section or the file can't be downloaded."
			Else
				Sleep,500
			
			Continue
		}
		
		If (Version > Version_Number){
			If (_SuppressMsgBox != 1 and _SuppressMsgBox != 3){
				MsgBox,0x4,New version available,There is a new version of %Script_Name% available.`nCurrent version: %Version_Number%`nNew version: %Version%`n`nWould you like to download it now?
				
				IfMsgBox,Yes
					MsgBox_Result := 1
			}
			
			If (_SuppressMsgBox or MsgBox_Result){
				IniRead,URL,%Version_File%,Info,URL,N/A
				
				If (URL = "N/A")
					_Information .= "The version info file doesn't have a valid URL key."
				Else {
					SplitPath,URL,,,Extension
					
					If (Extension = "ahk" And A_AHKPath = "")
						_Information .= "The new version of the script is an .ahk filetype and you do not have AutoHotKey installed on this computer.`r`nReplacing the current script is not supported."
					Else If (Extension != "exe" And Extension != "ahk")
						_Information .= "The new file to download is not an .EXE or an .AHK file type. Replacing the current script is not supported."
					Else {
						IniRead,MD5,%Version_File%,Info,MD5,N/A
						
						Loop,% Retry_Count
						{
							UrlDownloadToFile,%URL%,%Temp_FileName%
							
							IfExist,%Temp_FileName%
							{
								If (MD5 = "N/A"){
									_Information .= "The version info file doesn't have a valid MD5 key."
									, Success := True
									Break
								} Else {
									Ptr := A_PtrSize ? "Ptr" : "UInt"
									, H := DllCall("CreateFile",Ptr,&Temp_FileName,"UInt",0x80000000,"UInt",3,"UInt",0,"UInt",3,"UInt",0,"UInt",0)
									, DllCall("GetFileSizeEx",Ptr,H,"Int64*",FileSize)
									, FileSize := FileSize = -1 ? 0 : FileSize
									
									If (FileSize != 0){
										VarSetCapacity(Data,FileSize,0)
										, DllCall("ReadFile",Ptr,H,Ptr,&Data,"UInt",FileSize,"UInt",0,"UInt",0)
										, DllCall("CloseHandle",Ptr,H)
										, VarSetCapacity(MD5_CTX,104,0)
										, DllCall("advapi32\MD5Init",Ptr,&MD5_CTX)
										, DllCall("advapi32\MD5Update",Ptr,&MD5_CTX,Ptr,&Data,"UInt",FileSize)
										, DllCall("advapi32\MD5Final",Ptr,&MD5_CTX)
										
										FileMD5 := ""
										Loop % StrLen(Hex:="123456789ABCDEF0")
											N := NumGet(MD5_CTX,87+A_Index,"Char"), FileMD5 .= SubStr(Hex,N>>4,1) . SubStr(Hex,N&15,1)
										
										VarSetCapacity(Data,FileSize,0)
										, VarSetCapacity(Data,0)
										
										If (FileMD5 != MD5){
											FileDelete,%Temp_FileName%
											
											If (A_Index = Retry_Count)
												_Information .= "The MD5 hash of the downloaded file does not match the MD5 hash in the version info file."
											Else										
												Sleep,500
											
											Continue
										} Else
											Success := True
									} Else {
										DllCall("CloseHandle",Ptr,H)
										Success := True
									}
								}
							} Else {
								If (A_Index = Retry_Count)
									_Information .= "Unable to download the latest version of the file from " . URL . "."
								Else
									Sleep,500
								Continue
							}
						}
					}
				}
			}
		} Else
			_Information .= "No update was found."
		
		FileDelete,%Version_File%
		Break
	}
	
	If (_ReplaceCurrentScript And Success){
		SplitPath,URL,,,Extension
		Process,Exist
		MyPID := ErrorLevel
		
		VBS_P1 =
		(LTrim Join`r`n
			On Error Resume Next
			Set objShell = CreateObject("WScript.Shell")
			objShell.Run "TaskKill /F /PID %MyPID%", 0, 1
			Set objFSO = CreateObject("Scripting.FileSystemObject")
		)
		
		If (A_IsCompiled){
			SplitPath,A_ScriptFullPath,,Dir,,Name
			VBS_P2 =
			(LTrim Join`r`n
				Finished = False
				Count = 0
				Do Until (Finished = True Or Count = 5)
					Err.Clear
					objFSO.CopyFile "%Temp_FileName%", "%Dir%\%Name%.%Extension%", True
					If (Err.Number = 0) then
						Finished = True
						objShell.Run """%Dir%\%Name%.%Extension%"""
					Else
						WScript.Sleep(1000)
						Count = Count + 1
					End If
				Loop
				objFSO.DeleteFile "%Temp_FileName%", True
			)
			
			Return_Val :=  Temp_FileName
		} Else {
			If (Extension = "ahk"){
				FileMove,%Temp_FileName%,%A_ScriptFullPath%,1
				If (Errorlevel)
					_Information .= "Error (" . Errorlevel . ") unable to replace current script with the latest version."
				Else {
					VBS_P2 = 
					(LTrim Join`r`n
						objShell.Run """%A_ScriptFullPath%"""
					)
					
					Return_Val :=  A_ScriptFullPath
				}
			} Else If (Extension = "exe"){
				SplitPath,A_ScriptFullPath,,FDirectory,,FName
				FileMove,%Temp_FileName%,%FDirectory%\%FName%.exe,1
				FileDelete,%A_ScriptFullPath%
				
				VBS_P2 =
				(LTrim Join`r`n
					objShell.Run """%FDirectory%\%FName%.exe"""
				)
				
				Return_Val :=  FDirectory . "\" . FName . ".exe"
			} Else {
				FileDelete,%Temp_FileName%
				_Information .= "The downloaded file is not an .EXE or an .AHK file type. Replacing the current script is not supported."
			}
		}
		
		VBS_P3 =
		(LTrim Join`r`n
			objFSO.DeleteFile "%VBS_FileName%", True
		)
		
		If (_SuppressMsgBox < 2)
		{
			If (InStr(VBS_P2, "Do Until (Finished = True Or Count = 5)"))
			{
				VBS_P3 .= "`r`nIf (Finished = False) Then"
				VBS_P3 .= "`r`nWScript.Echo ""Update failed."""
				VBS_P3 .= "`r`nElse"
				If (Extension != "exe")
					VBS_P3 .= "`r`nobjFSO.DeleteFile """ A_ScriptFullPath """"
				VBS_P3 .= "`r`nWScript.Echo ""Update completed successfully."""
				VBS_P3 .= "`r`nEnd If"
			} Else
				VBS_P3 .= "`r`nWScript.Echo ""Update complected successfully."""
		}
		
		FileDelete,%VBS_FileName%
		FileAppend,%VBS_P1%`r`n%VBS_P2%`r`n%VBS_P3%,%VBS_FileName%
		
		If (_CallbackFunction != ""){
			If (IsFunc(_CallbackFunction))
				%_CallbackFunction%()
			Else
				_Information .= "The callback function is not a valid function name."
		}
		
		RunWait,%VBS_FileName%,%A_Temp%,VBS_PID
		Sleep,5000
		
		Process,Close,%VBS_PID%
		_Information := "Error (?) unable to replace current script with the latest version.`r`nPlease make sure your computer supports running .vbs scripts and that the script isn't running in a pipe."
	}
	
	_Information := _Information = "" ? "None" : _Information
	
	Return Return_Val
}


;~ Update checker===================================================================================================================================





