#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%



F7::
{
	WinActivate, Destiny 2
	Sleep, 200
	loop,
	{
		dump_Energy()
		loop, 4 
		{
			shoot_Witherhoard()
		}
	}
}
Return

shoot_Witherhoard() 
{
	Send, {LButton}
	Sleep, 8000
	Return
}

dump_Energy() 
{
	Send, {LButton}
	Sleep, 200
	Send, {F1}
	Sleep, 1000
	Click, % A_ScreenWidth*0.27500 " " A_ScreenHeight*0.48000
	Sleep, 200
	loop, 4
	{
		Click, % A_ScreenWidth*0.21500 " " A_ScreenHeight*0.48000
		Sleep, 200
	}
	Send, {F1}
	Sleep, 2000
	Return
}

F8::Reload

F9::ExitApp