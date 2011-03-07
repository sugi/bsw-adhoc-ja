Set shell = CreateObject("WScript.Shell")
Set fs = CreateObject("Scripting.FileSystemObject")
appdata = shell.SpecialFolders("AppData")
bswd = appdata + "\BSW"

If Not fs.FolderExists(bswd) Then
  WScript.Echo "データフォルダが見つかりません (" + bswd + ")."
  WScript.Quit
End If


Call fs.CopyFolder("localized", bswd+"\localized", True)
WScript.Echo "コピーが完了しました。 (対象: " + bswd + ")."
WScript.Quit