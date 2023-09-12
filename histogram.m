im1 = imread('cameraman.tif');
im2 = imread('circles.png');
m = zeros(256,1,'uint8');
hist1 = imhist(im1);
hist2 = imhist(im2);
cdf1 = cumsum(hist1) / numel(im1);
cdf2 = cumsum(hist2) / numel(im2);

for idx = 1 : 256
    diff = abs(cdf1(idx) - cdf2);
    [~,ind] = min(diff);
    m(idx) = ind-1;
end

out = m(double(im1)+1);

subplot(2,3,1),imshow(im1);
title('cameraman');

subplot(2,3,2),imshow(im2);
title('Circles');

subplot(2,3,3),imshow(out);
title('Histogram matched cameraman');

subplot(2,3,4),imhist(im1);
title('Histogram of cameraman');

subplot(2,3,5),imhist(im2);
title('Histogram of circles');

subplot(2,3,6),imhist(out);
title('Histogram of matched image');
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    