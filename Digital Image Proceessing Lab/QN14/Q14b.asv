r=imread('X:/1.jpg');
r=r(:,:,1);
figure('name','Original Image');imshow(r);
PQ=paddedsize(size(r));
D0=0.05*PQ(1);
H=lpfilter('ideal',PQ(1),PQ(2),D0);
F=fft2(double(r),size(H,1),size(H,2));
LPF_r=real(ifft2(H.*F));
LPF_r=LPF_r(1:size(r,1),1:size(r,2));
figure,imshow(LPF_r,[]);
title('Ideal low pass filter image');
Fc=fftshift(F);
S2=log(1+abs(Fc));
figure,imshow(S2,[]);
title('Fourrier transform of the Original Image')