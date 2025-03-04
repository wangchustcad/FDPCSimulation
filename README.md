# FDPC Simulation

This repository collects the MATLAB scripts and result data for the model analysis of the FDPC design in the paper "A relational abstraction of Structure and Behavior for Cyber-Physical System Design".

![The top model](img/top.png "Top model")

The main model is a StateFlow model with five simulator-defined parameters. It has six behavior modes corresponding to the three system modes in relational representation.

![The modes of the stateflow](img/system_modes.png "System modes")

## Files in the project

There are 3 script files in the project:

1. model.slx - The main model to solve the piecewise model of the FDPC. It is constructed based on the Stateflow;
2. plotp.m - The code for generating plots of position;
3. plotv.m - The code for generating plots of velocity.
The remained files are result of position (file name starts with "p") and velocity (file name starts with "v") simulating at different parameter value.

## How to run

1. Load the project directory in MATLAB.
2. Open the main model model.slx.
3. Set the value of parameter {M, kR, Pe, pL, pR} and the file name of simulation result.
4. Click "play" button to compute, and the result will be generated in current directory.
5. Open script "plotp.m" and "plotv.m" to generate plots of the position and velocity.

## Contact/Talk to me

My e-email is wangc@hust.edu.cn. Feel free to contact me anytime, or just nag me if I'm being lazy.
