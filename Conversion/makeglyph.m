function glyph = makeglyph(im1, im2) 

% Adjust luminance and contrast of green image

LIM=im1;
RIM2=im2;
% RIM2=gray2rgb(RIM);
RIM2(:,:,1)=0;
RIM2(:,:,3)=0;
gchan=rgb2gray(im2);
rchan=rgb2gray(im1);

RIM2(:,:,2) = gchan;
LIM2(:,:,1)=rchan;
LIM2(:,:,2)=0;
LIM2(:,:,3)=0;

LIM2=imresize(LIM2,size(RIM2(:,:,1)));
glyph=im2uint8((normalise(RIM2)+normalise(LIM2)));
glyph(:,:,3)=0;




end
