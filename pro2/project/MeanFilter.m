function [img]=MeanFilter(grayOrRGB)
grayOrRGB=double(grayOrRGB);
filter = [1/9 1/9 1/9 ; 1/9 1/9 1/9 ; 1/9 1/9 1/9];
img = imfilter(grayOrRGB , filter);
img=uint8(img);
end
%make noise