I = imread('pout.tif');
imshow(I);
j=fft2(I);
imshow(j)