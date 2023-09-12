 function [ brigth ] = Brigthness(RGB,offset,option )
[H ,W ,l]=size(RGB);
brigth=zeros(H ,W,l);
brigth=double(brigth);
for i=1:H
    for j=1:W
        %increase Brigthness
        if option==1
           brigth(i,j,1)= RGB(i,j,1)+offset;
           brigth(i,j,2)= RGB(i,j,2)+offset;
           brigth(i,j,3)= RGB(i,j,3)+offset;
        end
        %increase Brigthness
         if option==2
           brigth(i,j,1)= RGB(i,j,1)*offset;
           brigth(i,j,2)= RGB(i,j,2)*offset;
           brigth(i,j,3)= RGB(i,j,3)*offset;
         end
          %decrease Brigthness
         if option==3
           brigth(i,j,1)= RGB(i,j,1)-offset;
           brigth(i,j,2)= RGB(i,j,2)-offset;
           brigth(i,j,3)= RGB(i,j,3)-offset;
         end
        %decrease Brigthness
         if option==4 
           brigth(i,j,1)= RGB(i,j,1)/offset;
           brigth(i,j,2)= RGB(i,j,2)/offset;
           brigth(i,j,3)= RGB(i,j,3)/offset;
         end

     
    end
brigth=uint8(brigth);
end







