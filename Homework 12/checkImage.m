function [sen] = checkImage(fName1,fName2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

img1 = imread(fName1);
img2 = imread(fName2);

[r1 c1] = size(img1);
[r2 c2] = size(img2);

    if r1~=r2||c1~=c2
        sen = sprintf('The images have different dimensions.');
    else
        a = all(all(img1(:,:,1)==img2(:,:,1)));
        b = all(all(img1(:,:,2)==img2(:,:,2)));
        c = all(all(img1(:,:,3)==img2(:,:,3)));

            if a&b&c
                sen = sprintf('The images are the same.');
            else
                sen = sprintf('The RGB values are different.');
            end
    end

end

