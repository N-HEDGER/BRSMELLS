# Binocular rivalry/ olfaction project.

## Summary

Each trial Trial lasts 60 seconds. The observer has to press either the left or right button to indicate whether they see a rose or a banana.

There are 16 rose/banana image rivalry pairs, each of which will be presented twice (eye of presentation is counterbalanced). Therefore there are 32 trials in total.

The observer presses the left key if the banana image is domiant, they press the right key if the rose image is dominant. The observer should press the space bar to start a new trial.


## Some Details

The main file that drives the experiment is called Main.m

When you run it you will be prompted three times.

Prompt 1: Fixed or random presentation order?

This is only in there for debugging, you will always want to select random presentation order. (Get rid of this if you want).

Prompt 2: Practice?

Use this to indicate whether or not the observer is doing practice trials, or the full version of the experiment.

Prompt 3: Anaglyph?

The experiment is also set up so that the stimuli can be viewed as anaglyphs instead. In this mode, only one monitor is used. Since we are currently collecting data for the stereo condition, you should indicate 0.


## To run the practice trials

This should be run before the observer does the full version of the experiment, the idea is to get them used to the weird stimulus conditions.

Fixed presentation: 0
Practice: 1
Anaglyph: 0

There are then 10 or so practice trials that last for around 10 seconds. No data is saved.


## To run the full experiment

Fixed presentation: 0
Practice: 0
Anaglyph: 0

You are then prompted to enter a filename. It should be named as follows:

1. SESSIONINITIALS (Session 1 = Banana, Session 2 = Rose).
2. PARTICIPANT INITIALS.

For instance, if I am Nick Hedger taking part in the banana condition, the filename will be named: S1NH


## The Data

I'm pretty sure there will be a 'data' directory and that there will be a .mat and a .log_txt file saved for each participant.

The .mat file will save all of the config and the .log file gives an indication of when the textures were flipped and when each trial began and ended.

The .mat file will include a cell/structure called 'trialevents' or something like that which will have a timestamp and button press vector for each trial. These are called trialevents.trialmat and trialevents.keyvec.

## The Code

This should all be quite self-explanatory. There will be a Config directory that contains all the screen, key and design config. 


