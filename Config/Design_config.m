%% Design config

% Only two factors (stimulus and eye

trialmat=vertcat(repmat(1,const.Nglyphs/2,1),repmat(2,const.Nglyphs/2,1));
trialmat(:,2)=vertcat((1:const.Nglyphs/2)',(1:const.Nglyphs/2)');

Trialevents.trialmat=GenerateEventTable(trialmat,const.Nreps,const.isfixed);



