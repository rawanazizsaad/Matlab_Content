%convert RGB to binary
function [bin] = rgbToBinary(RGB)
gray=rgbToGray(RGB,2);
bin=grayToBinary(gray,122);

end

