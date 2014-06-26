r=imread('1.jpg');
r=r(:,:,1);
imshow(r);
title('Original Image');
PQ=paddedsize(size(r));
D=0.05*PQ(1);
H=hpfilter('ideal',PQ(1),PQ(2),D);
F=fft2(double(r),size(H,1),size(H,2));
LPF_r=real(ifft2(H.*F));
LPF_r=LPF_r(1:size(r,1),1:size(r,2));
figure,imshow(LPF_r,[]);
title('Ideal High pass Filtered image');
Fc=fftshift(F);
S2=log(1+abs(Fc));
figure;imshow(S2,[]);
title('Fourrier transform of the Original Image')