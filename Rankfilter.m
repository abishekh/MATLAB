I=imread('X:/1.jpg');
I=rgb2gray(I);
imshow(I);
J=imnoise(I,'salt & pepper',0.02);
figure, imshow(J);
L = medfilt2(J,[3 3]);
figure, imshow(L)



