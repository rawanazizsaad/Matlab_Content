
function set_filtered_img(img,handles)
cla(handles.img_ax,'reset')
clc
%  a = axes('Position',[0 0 1 1],'Units','Normalized');
%  imshow(img,'Parent',a);
 % create an axes that spans the whole gui
 %                                                              x y x y
ah = handles.img_ax();
% import the background image and show it on the axes
bg = img;
imshow(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','on')
% making sure the background is behind all the other uicontrols

