I=imread('1.jpg');
I=rgb2gray(I)
subplot(2,2,1); imshow(I);
title('Grayscale');
J=histeq(I);
subplot(2,2,2); imshow(J);
title('Equalised');
%figure,imhist(J,64);
subplot(2,2,3); imhist(J,64);
title('Histogram');