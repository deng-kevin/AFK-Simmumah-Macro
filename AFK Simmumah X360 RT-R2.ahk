#SingleInstance, Force
#Persistent
#include <AHK-ViGEm-Bus>

; Create a new Xbox 360 controller
controller := new ViGEmXb360()
return

F7::
{
	Loop, 
	{
		controller.Axes.RT.SetState(100)
		Sleep, 100 
		controller.Axes.RT.SetState(0)
		Sleep, 100 
		controller.Buttons.Start.SetState(true)
		Sleep, 100
		controller.Buttons.Start.SetState(false)
		Sleep, 300
		controller.Axes.LY.SetState(64)
		Sleep, 200
		controller.Axes.LY.SetState(50)
		Sleep, 100
		controller.Axes.LX.SetState(0)
		Sleep, 585
		controller.Axes.LX.SetState(50)
		Sleep, 100
		loop, 2
		{
			controller.Buttons.A.SetState(true)
			Sleep, 100
			controller.Buttons.A.SetState(false)
			Sleep, 400
		}
		controller.Buttons.Start.SetState(true)
		Sleep, 100
		controller.Buttons.Start.SetState(false)
		Sleep, 1900
		Loop, 4
		{
			controller.Axes.RT.SetState(100)
			Sleep, 100
			controller.Axes.RT.SetState(0)
			Sleep, 7900
		}
	}
	Return
}

F8::Reload

F9::ExitApp