clear;

q = 234613;
flag = 1;

for i = 2 : q - 1
    if (mod(q, i) == 0)
        printf("%d is not a prime number.\n", q);
        flag = 0;
        break;
    endif
end

if flag == 1
    printf("%d is a prime number.\n", q);
end
