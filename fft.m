orgImage = imread('X:\Pixel.jpg', 'jpg'); 
figure(1); imshow(orgImage); 
fftImage = fftshift(fft2(orgImage));   % 2d fft 
ampImage= abs(fftImage); 
figure(2); imshow(ampImage,  [0  10000 ]); 


