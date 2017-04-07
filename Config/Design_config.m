%% Design config

% Only two factors (stimulus and eye

trialmat=nchoosek([1,2,1,2],2);
trialmat = unique(trialmat, 'rows');


Table = [];
for i=1:const.Nmods
Table=[Table; shoveonend(trialmat,(i))];
end


Trialevents.trialmat=GenerateEventTable(Table,const.Nreps,const.isfixed);



