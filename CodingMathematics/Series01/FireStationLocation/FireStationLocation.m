clear;
figure(1);
clf;
hold on

nx = 15;
ny = 24;

for j = 0 : ny
    line([0 nx], [j j])
end

for i = 0 : nx
    line([i i], [0 ny])
end

NoH = 50;

x = randi([0 nx], NoH, 1);
y = randi([0 ny], NoH, 1);
plot(x, y, "go", "linewidth", 10);

for i = 0 : nx
    for j = 0 : ny
        d = 0;

        for k = 1 : NoH
            d = d + abs(x(k) - i) + abs(y(k) - j);
        endfor

        fire(i + 1, j + 1) = d;
    endfor
end

s = (nx + ny) * NoH;

for i = 1 : nx + 1
    for j = 1 : ny + 1
        if fire(i, j) < s
            s = fire(i, j);
            m = i;
            n = j;
        endif
    endfor
end

plot(m - 1, n - 1, "rs", "linewidth", 30);
axis image

figure(2);
clf;
mesh(fire');
% "fire'" means the transpose of "fire" matrix.
hold on
plot3(m, n, "bo", "linewidth", 30)
axis([0 nx 0 ny 0 max(max(fire))])
