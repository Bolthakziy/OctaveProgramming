clear;

x = 30816
y = 81696

for gcdDivisor = min(x, y) : -1 : 1
    if mod(x, gcdDivisor) == 0 && mod(y, gcdDivisor) == 0
        x * y / gcdDivisor
        break;
    endif
end
