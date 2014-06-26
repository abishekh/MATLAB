 f=imread('1.jpg');
 f=rgb2gray(f);
 figure,imshow(f);
 hnorm=imhist(f)./numel(f);
 cdf=cumsum(hnorm);
 x=linspace(0,1,256);
 figure,plot(x,cdf);
 axis([0 1 0 1]);
 set(gca,'xtick',0:2:1)
 set(gca,'ytick',0:2:1)
 xlabel('Input intensity values','fontsize',9)
 ylabel('Output intensity values','fontsize',9)
 text(.3,1.05,'Transformation function','fontsize',9);