I = imread('eight.tif');
imshow(I);
j=ifft2(I);
imshow(j)