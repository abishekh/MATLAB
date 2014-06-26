I=imread('X:/1.jpg');
imshow(I);
m=I(:,end:-1:1,:);
figure, imshow(m);
imcrop(m,[433 165 765 596]);
whos
