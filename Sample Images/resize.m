folder = 'Tattoo\';
imgList = dir([folder '*.jpg']);

for i = 1:length(imgList)
    I = imread([folder imgList(i).name]);
    h = size(I,1);
    scale = 256/h;
    I = imresize(I, [256 size(I,2)*scale]);
    imwrite(I, [folder imgList(i).name]);
    disp(imgList(i).name);
end