Set Shell = CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")
DesktopPath = Shell.SpecialFolders("Desktop")
FSO.DeleteFile DesktopPath & "DiscLovestory no_nb.lnk"
