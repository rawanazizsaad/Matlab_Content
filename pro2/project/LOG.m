function [log_img] = LOG(GrayOrRGB,r)
[H ,W ,l]=size(GrayOrRGB);
log_img=zeros(H ,W,l);
GrayOrRGB=im2double(GrayOrRGB);
if l==3
    option=1;
else
    option=2;
end

% uint8
for i=1:H
    for j=1:W
        if option==1
           log_img(i,j,1)= 1*log(GrayOrRGB(i,j,1)+r);
            log_img(i,j,2)= 1*log(GrayOrRGB(i,j,2)+r);
            log_img(i,j,3)= 1*log(GrayOrRGB(i,j,3)+r);
        end
        if option==2
               log_img(i,j)= 1*log(GrayOrRGB(i,j)+r);
            
         
        end
    end


end

