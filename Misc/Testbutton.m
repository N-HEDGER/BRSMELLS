

Leftkey=KbName('LeftArrow');
Rightkey=KbName('RightArrow');

elapsedtime=[];
Key=[];


t1=GetSecs;
i=1;
TRIALLENGTH=10;

fprintf('Start pressing now')
tic
while toc<TRIALLENGTH
    i=i+1;
 
    [keyIsDown, ~, keyCode] = KbCheck(min(GetKeyboardIndices));
        if keyIsDown
            
        if keyCode(Leftkey)
            Key(i)=1;
        elseif keyCode(Rightkey)
             Key(i)=2;
        end
        
        else
            Key(i)=0;
        end
       t2=GetSecs;
    elapsed=t2-t1;
    elapsedtime(i)=elapsed;
    
end

plot(elapsedtime,Key)
