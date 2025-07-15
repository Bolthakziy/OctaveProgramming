clear;

F(1) = 1;
F(2) = 1;
n = 20;

fprintf("F(1) = %d\n", F(1));
fprintf("F(2) = %d\n", F(2));

for i = 3 : n
    F(i) = F(i - 1) + F(i - 2);
    fprintf("F(%d) = %d\n", i, F(i));
end

plot(F, "o-")
% "o-" means a drwaing line.
