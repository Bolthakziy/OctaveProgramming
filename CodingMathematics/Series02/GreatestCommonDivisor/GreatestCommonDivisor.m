clear;

x = 30816
y = 81696

for gcdDivisor = min(x, y) : -1 : 1
% From 'x'(or 'y') to 1, all the number will decrease by a value '1'.
    if mod(x, gcdDivisor) == 0 && mod(y, gcdDivisor) == 0
        gcdDivisor
        break;
    endif
end
