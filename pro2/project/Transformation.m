function [log_rgb] = Transformation(RGB,option)
[H ,W ,l]=size(RGB);
log_rgb=zeros(H ,W,l);
RGB=im2double(RGB);
for i=1:H
    for j=1:W
        if option==1
           log_rgb(i,j,l)= 2*log(RGB(i,j,1)+0);
            log_rgb(i,j,2)= 2*log(RGB(i,j,2)+0);
            log_rgb(i,j,3)= 2*log(RGB(i,j,3)+0);
        end
        if option==2
            
         
        end
    end


end

