A=imread('X:/1.jpg');
figure,imshow(A);
w=fspecial('average',[3,3]);
g=imfilter(A,w);
figure,imshow(g);
w=fspecial('average',[7,7]);
g=imfilter(A,w);
figure,imshow(g);
w=fspecial('average',[9,9]);
g=imfilter(A,w);
figure,imshow(g);