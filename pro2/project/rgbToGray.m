
%convert RGB to gray 
function [gray] = rgbToGray(RGB,option)
[h w l]=size(RGB);
gray=zeros(h,w);
gray=double(gray);
for i=1:h
    for j=1:w
        if option==1
            gray(i,j)=(RGB(i,j,1)+RGB(i,j,2)+RGB(i,j,3))/3;
        end
         if option==2
            gray(i,j)=RGB(i,j,1)*0.7+RGB(i,j,2)*0.1+RGB(i,j,3)*0.2;  % best option
         end
         if option==3
            gray(i,j)=RGB(i,j,1);
         end
         if option==4
            gray(i,j)=RGB(i,j,2);
         end
         if option==5
            gray(i,j)=RGB(i,j,3);
        end
    end
end
gray=uint8(gray);
end

