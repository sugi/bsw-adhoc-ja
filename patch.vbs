Set shell = CreateObject("WScript.Shell")
Set fs = CreateObject("Scripting.FileSystemObject")
appdata = shell.SpecialFolders("AppData")
bswd = appdata + "\BSW"

If Not fs.FolderExists(bswd) Then
  WScript.Echo "�f�[�^�t�H���_��������܂��� (" + bswd + ")."
  WScript.Quit
End If


Call fs.CopyFolder("localized", bswd+"\localized", True)
WScript.Echo "�R�s�[���������܂����B (�Ώ�: " + bswd + ")."
WScript.Quit