function resizeImage(fName,r,c)

img = imread(fName);
br = strfind(fName,'.')
fNew = sprintf('%s_%dx%d%s',fName(1:br-1),r,c,fName(br:end))
[R C D] = size(img)

indR = round(linspace(1,R,r));
indC = round(linspace(1,C,c));

newimg = img(indR,indC,1:3);
imwrite(newimg,fNew)

end