I = imread('eight.tif');
imshow(I)
J = imnoise(I,'salt & pepper',0.02);
imshow(J)