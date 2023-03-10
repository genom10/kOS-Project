print("Initiating Launch.ks").

set targetState to list(500, 0). //(500m, 0m/s)


//Next, we'll lock our throttle to 100%.
lock throttle to 1.0.   // 1.0 is the max, 0.0 is idle.
lock steering to up.
stage.
set gear to false.

wait until false.