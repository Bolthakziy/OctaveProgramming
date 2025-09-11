clear;

n = 100;
x = ones(n, 1);
x(1) = 0;

for i = 2 : floor(sqrt(n))
  for j = i + 1 : n
    if mod(j, i) == 0
      x(j) = 0;
    endif
  endfor
endfor

count = 1;

for i = 1 : n
  if x(i) == 1
    g(count) = i;
    count = count + 1;
  endif
endfor

for i = 1 : length(g)
  for j = i : length(g)
    if n == g(i) + g(j)
      [g(i) g(j)]
    endif
  endfor
endfor
