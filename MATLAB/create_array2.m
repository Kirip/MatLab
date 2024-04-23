function z = create_array2(x,y)
% same as create_array1, but it will give [x;y] (x on top of y)
% first we need to transpose x and y
z = [x';y'];