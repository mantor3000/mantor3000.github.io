% resize jpg images and save as png
clear all; clf; close all;

D = dir('May-2013\');
numImg = size(D,1);

for n = 1:numImg
    if length(D(n).name)>2 && strcmp(D(n).name(end-2:end),'jpg')
        image = imread(['May-2013\',D(n).name]);
        outimg = imresize(image, 0.15);
        imwrite(outimg, ['May-2013\',D(n).name(1:end-4),'.png']);
        delete(['May-2013\',D(n).name]);
    end
    
end

