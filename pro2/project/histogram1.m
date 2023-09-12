function [] = histogram1(gray)
histo=zeros(256);
[h,w,l]=size(gray);
for i=1:h
    for j=1:w
       histo(gray(h,w)+1)= histo(gray(h,w)+1);
    end
end
bar(histo);
end

