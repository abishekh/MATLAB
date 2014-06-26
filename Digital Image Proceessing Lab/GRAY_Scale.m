%Program to convert ot Gray Scale
I=imread('X:/1.jpg'); % Read an image
whos;
figure('Name','Color'), imshow(I); %Display an image
I=rgb2gray(I);
figure('Name','Gray'), imshow(I);