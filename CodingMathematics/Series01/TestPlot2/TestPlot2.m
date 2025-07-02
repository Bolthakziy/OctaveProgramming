clear;
clf;

x = [-5 -4 -3 -2 -1 0 1 2 3 4 5];
y1 = [-10 -8 -6 -4 -2 0 2 4 6 8 10];
y2 = [-5 -4 -3 -2 -1 0 1 2 3 4 5];
y3 = [3 3 3 3 3 3 5 5 5 5 5];

plot(x, y1, "b-","linewidth", 3)
hold on
% Keep the graph being seen.
plot(x, y2, "g-","linewidth", 3)
hold on
plot(x, y3, "r-","linewidth", 3)
