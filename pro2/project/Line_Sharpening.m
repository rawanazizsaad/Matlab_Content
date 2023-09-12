function[img] =Line_Sharpening(grayOrRGB)
Lap=[0 1 0; 1 -4 1; 0 1 0];
grayOrRGB=rgbToGray(grayOrRGB,2);
a1=conv2(grayOrRGB,Lap,'same');     %edges
%  figure,imshow(a1);

% After convolution the intensity
% Values go beyond the range.
% Normalise the range of intensity.
 a2=uint8(a1);

% Display the sharpened image.
%   imtool(abs(grayOrRGB-a2),[])

% Define strong laplacian filter
 lap=[-1 -1 -1; -1 8 -1; -1 -1 -1];

% Apply filter on original image
a3=conv2(grayOrRGB,lap,'same');

% Normalise the resultant image.
 a4=uint8(a3);

% Display the sharpened image.
img=abs(grayOrRGB+a4);








