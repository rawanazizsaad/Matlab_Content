I = imread('pout.tif');
imshow(I);
J = imnoise(I,'speckle');
imshow(J);
%adds multiplicative noise using the equation J = I+n*I, where n is uniformly distributed random noise with mean 0 and variance 0.05.