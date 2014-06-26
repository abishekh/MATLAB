I=imread('1.jpg');
subplot(1,2,1);imshow(I);
title('Color');
m=I(:,end:-1:1,:);
subplot(1,2,2);imshow(m);
title('Inverted');
imcrop(m,[433 165 765 596]);
whos