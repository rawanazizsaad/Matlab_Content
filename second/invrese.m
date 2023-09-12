I = imread('eight.tif');
imshow(I);
j=ifft(I);
imshow(j)