o=imread('X:/1.jpg');
subplot(2,2,1); imshow(o);
I=rgb2gray(o);
k=imadjust(I,[0.0 0.9],[]);
subplot(2,2,2);imshow(k);
j=imadjust(I,[0.3 0.7],[]);
subplot(2,2,3);imshow(j);
j=imadjust(I,[0.0 0.3],[]);
subplot(2,2,4);imshow(j);




