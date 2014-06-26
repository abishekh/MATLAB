orgImage = imread('1.jpg'); 
subplot(1,2,1);imshow(orgImage);
title('Color');
orgImage=rgb2gray(orgImage);
fftImage = fftshift(fft2(orgImage));   % 2d fft 
ampImage= abs(fftImage); 
subplot(1,2,2);imshow(ampImage,  [0  10000 ]);
title('After fourier transform');