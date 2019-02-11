function [arr] = colorScreen(fimg,bimg,v)

f = imread(fimg);
b = imread(bimg);

lone = f(:,:,1);
ltwo = f(:,:,2);
lthree = f(:,:,3);

lbone = b(:,:,1);
lbtwo = b(:,:,2);
lbthree = b(:,:,3);

lvone = lone==v(1);
lvtwo = ltwo==v(2);
lvthree = lthree==v(3);

lv = floor((lvone+lvtwo+lvthree)./3)==1;

lone(lv) = lbone(lv);
ltwo(lv) = lbtwo(lv);
lthree(lv) = lbthree(lv);

arr(:,:,1) = lone;
arr(:,:,2) = ltwo;
arr(:,:,3) = lthree;

end

