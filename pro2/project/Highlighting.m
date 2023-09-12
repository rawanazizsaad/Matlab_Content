img1= imread('peppers.png');
figure
imshow(img1);

red= img1(:,:,1);
blue= img1(:,:,2);
green= img1(:,:,3);

d =impixel(img1);

out= red>160 & blue<101 & blue>0 & green<110 & green>0;
figure
imshow(out);

out2=imfill(out,'holes');
out3=bwmorph(out2,'dilate',3);
out3=imfill(out3,'holes');
figure
imshow(out3);

imgBoth=imoverlay(img1,out3,'black');
figure
imshow(imgBoth);



