clc;
clear all;
close all;
f = imread('pout.tif');
[gv,t]=edge(f,'sobel','vertical');%%automatically threshold
subplot(121),imshow(f),title('original image');
subplot(122),imshow(gv),title('Results using vertical Sobel with automatically t');

gboth=edge(f,'sobel',0.15);
%%ver and hor
figure
subplot(121),imshow(gv),title('Results using vertical Sobel with specified t');
subplot(122),imshow(gboth),title('Results using ver and hor Sobel with specified t');
w45=[-2 -1 0;-1 0 1;0 1 2];%%45
g45=imfilter(double(f),w45);
T=0.3*max(abs(g45(:)));
g45=g45>=T;
figure
subplot(121),imshow(g45),title('The edge oriented at 45 ');
ww45=[0 1 2;-1 0 1;-2 -1 0]; %%-45
gg45=imfilter(double(f),ww45);
T2=0.3*max(abs(gg45(:)));
gg45=gg45>=T2;
subplot(122),imshow(gg45),title('The edge oriented at -45 ');
