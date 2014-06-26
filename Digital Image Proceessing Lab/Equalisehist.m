I=imread('X:/1.jpg');
I=rgb2gray(I)
imshow(I);
J=histeq(I);
figure,imshow(J);
figure,imhist(J,64);


