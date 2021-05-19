' keepmelive.vbs
'###############################################

Set WshShell = WScript.CreateObject("WScript.Shell")
Const wshYes = 6
Const wshNo = 7
Const wshYesNoDialog = 4
Const wshQuestionMark = 32

Dim cnt
cnt = 1
Do While cnt < 3600
    WshShell.SendKeys "%{TAB}"
    cnt = cnt + 1
    WScript.Sleep 500
    intReturn = WshShell.Popup("Do you want to Exit?", _
        10, "Waiting for your Input", wshYesNoDialog + wshQuestionMark)
    If intReturn = wshYes Then
        cnt = 10000
    ElseIf intReturn = wshNo Then
        'Doing Nothing"
    Else
        'Doing Nothing
    End If
Loop
