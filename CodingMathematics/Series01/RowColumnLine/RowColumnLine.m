clear;
clf;

nx = 16;
ny = 25;

for j = 1 : ny
    line([0 nx], [j j])
end

for i = 1 : nx
    line([i i], [0 ny])
end

axis image
