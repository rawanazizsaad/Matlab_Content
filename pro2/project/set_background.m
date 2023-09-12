

function set_background()
img=imread('C:\Users\Romany\Pictures\back.jpg');
%  a = axes('Position',[0 0 1 1],'Units','Normalized');
%  imshow(img,'Parent',a);

 % create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = img; imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');
