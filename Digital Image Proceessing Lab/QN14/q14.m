r=imread('X:/1.jpg');
r=r(:,:,1);
subplot(1,2,1);imshow(r);
title('Original Image');
PQ=paddedsize(size(r));
D=0.05*PQ(1);
H=lpfilter('gaussian',PQ(1),PQ(2),D);
F=fft2(double(r),size(H,1),size(H,2));
LPF_r=real(ifft2(H.*F));
LPF_r=LPF_r(1:size(r,1),1:size(r,2));
subplot(1,2,2);imshow(LPF_r,[]);
title('Gaussian low pass filter image');
Fc=fftshift(F);
S2=log(1+abs(Fc));
figure;imshow(S2,[]);
title('Fourrier transform of the Original Image')