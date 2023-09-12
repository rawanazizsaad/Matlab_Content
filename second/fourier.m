I = imread('pout.tif');
imshow(I);
j=fft(I);
imshow(j)