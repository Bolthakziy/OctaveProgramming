clear;
n = 100;
y = ones(n, 1);
y(1) = 0;

for i = 2 : floor(sqrt(n))
  for j = i + 1 : n
    if mod(j, i) == 0
      y(j) = 0;
    endif
  endfor
endfor

count = 1;

for i = 1 : n
  if y(i) == 1
    z(count) = i;
    count = count + 1;
  endif
endfor

for i = 1 : length(z) - 1
  if z(i + 1) - z(i) == 2
    [z(i) z(i + 1)]
  endif
endfor
