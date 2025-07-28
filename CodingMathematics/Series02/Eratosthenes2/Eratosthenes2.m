clear;

n = 100;
x = ones(n, 1);
x(1) = 0;

for i = 2 : floor(sqrt(n))
    for j =  i + 1 : n
        if mod(j, i) == 0
            x(j) = 0;
        endif
    endfor
end

for i = 1 : n
    if x(i) == 1
        prime = i
    endif
end

TotalNumber = sum(x)

