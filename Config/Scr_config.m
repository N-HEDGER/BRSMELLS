Screen('Preference', 'SkipSyncTests', 1);
% Select maximum screen index.
scr.main = max(Screen('Screens'));
[scr.scr_sizeX, scr.scr_sizeY]=Screen('WindowSize', scr.main);
% Get useful screen coords.
scr.x_mid = (scr.scr_sizeX/2.0);
scr.y_mid = (scr.scr_sizeY/2.0);
scr.mid = [scr.x_mid,scr.y_mid];
scr.rect=Screen(scr.main,'Rect');
% Stimulus rectangle.
[scr.stimrect,dh,dv] = CenterRect([0 0 round(const.stimsize) round(const.stimsize*const.stimasp)], scr.rect);