# FDPC Simulation

This project is the matlab code for the design example of FDPC in the paper "A relational abstraction of Structure and Behavior for Cyber-Physical System Design".

## Files in the project

There are 3 code file in the project.

1. model.slx  The main model to solve the piecewise model of the FDPC. This model is constructed based on the difference algebraic equations in relation predicates.
2. plotp.m    The code for generating plots of position
3. plotv.m    The code for generating plots of velocity
The remained files are simulate result of position (file name starts with "p") and velocity (file name starts with "v") at different parameter value.

## How to run

1. Load the project directory in Matlab.
2. Open the model file model.slx.
3. Set the value of parameter {M, kR, Pe, L, pL, pR} and the file name of simulation result.
4. Click "play" button and the simulation result will be generated in current directory.
5. Open script "plotp.m" and "plotv.m" to generate plots of the position and velocity.

## Contact/Talk to me

My e-email is wangc@hust.edu.cn. Feel free to contact me anytime, or just nag me if I'm being lazy.
