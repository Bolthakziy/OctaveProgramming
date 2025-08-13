clear;

n = 10000;

for i = 2 : n
    x = 0;
    for j = 1 : i - 1
        if mod(i, j) == 0
            x = x + j;
        endif
    endfor

    if i == x
        i
    endif
endfor
