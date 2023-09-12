f = imread('circles.png');
w=[-1,-1,-1;-1,8,-1;-1,-1,-1];
g=abs(imfilter(double(f),w));
T=max(g(:));
g=g>=T; %(T given threshold)
subplot(121),imshow(f),title('original image');
subplot(122),imshow(g),title('Result of point detection');