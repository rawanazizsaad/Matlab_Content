function [mxImg]=MaxFilter(img)   % delete noise 
%  x=rand(size(img));
%  img(x(:)<0.5)=0; % make noise for test
% figure;
% imshow(img);
sto=[];
[h w,L]=size(img);
output=zeros(h,w,L);
for l=1:L
    for i=2:h-1
           for j=2:w-1
            sto=[img(i-1,j-1,l),img(i-1,j,l),img(i-1,j+1,l),img(i,j-1,l),img(i,j,l),img(i,j+1,l),img(i+1,j-1,l),img(i+1,j,l),img(i+1,j+1,l)];
            es=max(sto);
            output(i,j,l)=es;
            sto=[];
         end
       
    end
    mxImg=uint8(output);
end
end