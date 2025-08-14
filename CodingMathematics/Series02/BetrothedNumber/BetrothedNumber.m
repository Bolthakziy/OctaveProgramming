clear;

n = 2000;

for i = 2 : n
    x = 0;

    for j = 2 : i - 1
        if mod(i, j) == 0
            x = x + j;
        endif
    endfor

    if x > 0
        y = 0;

        for j = 2 : x - 1
            if mod(x, j) == 0
                y = y + j;
            endif
        endfor

        if i == y && x > i
            [i x]
        endif
    endif
endfor
