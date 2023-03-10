//hover
//
//hovers a ship at 15m above the terrain

//runs required functions
run PID.

//set to known state
clearscreen.
print "Initialising" at (5,4).
wait 1.

//set parameters
set runmode to 1.
set hTarget to 15. // sets the target height above the terrain
set PIDParam to PID_init(0.5,0.0002,0.1,-1,1). //specifies the PID gains of position, integral, derivative,
											   //lower and upper integral ranges (to protect against 
											   //integral windup) in this order

//loops indefinitely
until runmode = 0 {
	set hCurrent to alt:radar. //current altitude above terrain
	set TVAL to PID_seek(PIDParam, hTarget, hCurrent). //sets throttle using PID controller
	
	lock throttle to TVAL.
	
	//parameters to display
	print "Initial height:			" + round(hTarget,2) + "			" at (5,4).
	print "Current height:			" + round(hCurrent,2) + "			" at (5,5).
	print "Current height error:			" + round((hCurrent - hTarget),2) + "			" at (5,6).
}