#Import "<std>"
#Import "<mojo>"

Using std..
Using mojo..

Class MyWindow Extends Window

	Method New()				
	End Method
	
	Method OnRender( canvas:Canvas ) Override
		App.RequestRender() ' Activate this method 
		' if key escape then quit
		If Keyboard.KeyReleased(Key.Escape) Then App.Terminate()				
	End Method	
	
End	Class

Function Main()
	New AppInstance	
	New MyWindow
	App.Run()
End Function
