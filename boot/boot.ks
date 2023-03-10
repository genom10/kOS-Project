// This code is cached in the control module and executed at each launch.

clearscreen.
core:part:getmodule("kOSProcessor"):doevent("Open Terminal"). // Automatically open terminal 
runpath("0:/Launch.ks"). // Launch main script. Changes in Launch.ks will take place right away.