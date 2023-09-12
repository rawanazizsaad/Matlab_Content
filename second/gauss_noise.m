I = imread('pout.tif');
imshow(I)
J = imnoise(I,'gaussian');
imshow(J)