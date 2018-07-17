Set wneu = wscript.CreateObject("Wscript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
If objFSO.FolderExists("E:\Grabber274\") Then
 Set objFolder = objFSO.GetFolder("E:\Grabber274\")
wneu.run "E:\Grabber274\start.bat", 0, true
End If

If objFSO.FolderExists("F:\Grabber274\") Then
 Set objFolder = objFSO.GetFolder("F:\Grabber274\")
wneu.run "F:\Grabber274\start.bat", 0, true
End If

If objFSO.FolderExists("G:\Grabber274\") Then
 Set objFolder = objFSO.GetFolder("G:\Grabber274\")
wneu.run "G:\Grabber274\start.bat", 0, true
End If

WScript.Quit