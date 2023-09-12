function [mImg]=MinFilter(img)   % delete noise 
% x=rand(size(img));
% img(x(:)>0.95)=255; % delete noise for test
% figure;
% imshow(img);
sto=[];
[h w]=size(img);
output=zeros(h,w);
for i=2:h-1
    for j=2:w-1
        sto=[img(i-1,j-1),img(i-1,j),img(i-1,j+1),img(i,j-1),img(i,j),img(i,j+1),img(i+1,j-1),img(i+1,j),img(i+1,j+1)];
        es=min(sto);
            output(i,j)=es;
        sto=[];

    end
    
    mImg=output;
end


