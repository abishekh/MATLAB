I=imread('1.jpg');
subplot(1,2,1);imshow(I);
title('Color');
I=rgb2gray(I);
subplot(1,2,2);imhist(I);
title('Histogram');