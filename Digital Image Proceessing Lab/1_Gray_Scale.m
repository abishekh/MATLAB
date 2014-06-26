%Program to convert to Gray Scale

I=imread('1.jpg'); % Read an image
whos;
subplot(1,2,1);imshow(I);
title('Color');
I=rgb2gray(I);
subplot(1,2,2);imshow(I);
title('Grayscale');