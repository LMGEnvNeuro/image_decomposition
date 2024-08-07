%clear;close all;
im = tempp1a;
%im=imread('rice.png');
fim=mat2gray(im);
%draw magnitude of gradient
figure('name','Magnitude of Gradient','Position',[0 0 2400 1800]);
[imx,imy]=gaussgradient(fim,0.5);
subplot(2,2,1); imshow(abs(imx)+abs(imy)); title('sigma=0.5');
[imx,imy]=gaussgradient(fim,1.0);
subplot(2,2,2); imshow(abs(imx)+abs(imy)); title('sigma=1.0');
[imx,imy]=gaussgradient(fim,1.5);
subplot(2,2,3); imshow(abs(imx)+abs(imy)); title('sigma=1.5');
[imx,imy]=gaussgradient(fim,2.0);
subplot(2,2,4); imshow(abs(imx)+abs(imy)); title('sigma=2.0');

%draw gradeint in a small region with sigma=1.0
[imx,imy]=gaussgradient(fim,1.0);
figure('name','Gradient','Position',[0 0 2400 1800]);
imshow(fim(1:750,1:750),'InitialMagnification','fit');
hold on;
quiver(imx(1:750,1:750),imy(1:750,1:750));
title('sigma = 1.0');

[imx,imy]=gaussgradient(fim,0.5);
figure('name','Gradient');
imshow(fim(1:50,1:50),'InitialMagnification','fit');
hold on;
quiver(imx(1:50,1:50),imy(1:50,1:50));
title('sigma = 0.5');

[imx,imy]=gaussgradient(fim,2.0);
figure('name','Gradient');
imshow(fim(1:50,1:50),'InitialMagnification','fit');
hold on;
quiver(imx(1:50,1:50),imy(1:50,1:50));
title('sigma = 2.0');