function [ result ] = GammaCorrection( img,g)  %brightness
[H W,l ]=size(img);
result=zeros(H,W,l);
img=im2double(img);
for i=1:H
    for j=1:W
        if l==3
            result(i,j,1)=(img(i,j,1))^g;
            result(i,j,2)=(img(i,j,2))^g;
            result(i,j,3)=(img(i,j,3))^g;
         
        else
            result(i,j,l)=(img(i,j,l))^g;
        end 
    end
end
result=im2uint8(result);


end