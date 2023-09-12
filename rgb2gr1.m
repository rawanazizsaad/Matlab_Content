function [] = rgb2gr(img)
[r c d] = size(img);
grayimg = zeros(r,c);
grayimg = double(grayimg);
 for i= 1: r
     for j = 1:c
grayimg(i,j) = img(i,j,1);
     end
 end
 grayimg = uint8(grayimg);
 imshow(grayimg)
end
