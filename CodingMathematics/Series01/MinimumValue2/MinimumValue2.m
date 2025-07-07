clear;
clf;

nx = 16;
ny = 25;
B = randi([1, 1000], nx, ny)
mesh(B');
% Display the matrix as a graph.
hold on

s = 1000;

for i = 1 : nx
    for j = 1 : ny
        if B(i, j) < s
            s = B(i, j);
            mini = i;
            minj = j;
        endif
    endfor
endfor

[mini minj s]
plot(mini, minj, "ro", "linewidth", 20)

