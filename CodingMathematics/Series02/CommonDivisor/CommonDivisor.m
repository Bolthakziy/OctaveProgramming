clear;

x = 30816
y = 81696

for divisor = 1 : min(x, y)
    if mod(x, divisor) == 0 && mod(y, divisor) == 0
        divisor
        % print the 'divisor'.
    endif
end

