%% Add paths
addpath('Config','Data','Stimuli','Conversion','Misc');

%% Inputs

const.isfixed=input('Fixed presentation order?');
const.ispractice=input('Practice?');


%% Constants

Const_config

%% Set up screen 

Scr_config


%% Set up design

Design_config
%% Set up screen and textures

[scr.window, scr.rect] = Screen('OpenWindow', scr.main, [const.BGcol]);
priorityLevel=MaxPriority(scr.window);
Priority(priorityLevel);
slack = Screen('GetFlipInterval', scr.window);
PRELOADTEXTURES

for i=1:length(Trialevents.trialmat)

Screen('DrawDots',scr.window,scr.mid,const.bigfixsize,const.bigfixcol,[],1);
Screen('DrawDots',scr.window,scr.mid,const.smallfixsize,const.smallfixcol,[],1);
Screen('DrawDots',scr.window,scr.mid,const.smallerfixsize,const.smallerfixcol,[],1);
initpres=Screen('Flip', scr.window,[]); 
    
Screen('DrawTexture', scr.window,STIMULI{Trialevents.trialmat(i,2),Trialevents.trialmat(i,3)}, [], scr.stimrect,[]);
stimpres=Screen('Flip', scr.window,[initpres+const.ITI]); 

tic
while toc<const.triallength
    
end

end
    

