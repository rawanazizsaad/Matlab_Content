function [] = rgb2gr(img)
[r c d] = size(img);
grayimg = zeros(r,c);
grayimg = double(grayimg);
 for i= 1: r
     for j = 1:c
grayimg(i,j) = (0.25*img(i,j,1)+ 0.25*img(i,j,2)+ 0.50*img(i,j,3));
     end
 end
 grayimg = uint8(grayimg);
 imshow(grayimg)
end