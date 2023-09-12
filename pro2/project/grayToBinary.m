%convert gray to binary 
function [bin] = grayToBinary(Gray,mid)
[h w l]=size(Gray);
bin=zeros(h,w);
for i=1:h
    for j=1:w
        if Gray(i,j)>mid
            bin(i,j)=1;
        end
        if Gray(i,j)<mid
            bin(i,j)=0;
        end
       
    end
end
bin=logical(bin);

end

