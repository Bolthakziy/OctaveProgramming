clear;
format long
#int => long

n = 985564500
q = 2
count = 1

while q <= n
    if mod(n, q) == 0
        n = n / q;
        x(count) = q;
        # Add factors to the list 'x'.
        count = count + 1
    else
        q = q + 1;
    endif
end

x
# Print all members in 'x'.

s = 1;

for i = 1 : length(x)
    s = s * x(i)
end

s
