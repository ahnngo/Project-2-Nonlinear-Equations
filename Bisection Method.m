% Using Bisection method to compute sin(x) = an enterred number
display("Calculate sin(x) = y");

y = input("Provide a number for this algorithm: ");

% enter tolerance
e = input("Enter your tolerance: ");

% create upper and lower bound that x must be in
if (-1 <= y && y <= 1)
  a = -pi/2;
  b = pi/2;
  j = 0
  while abs((b-a)/b) > e
    j = j + 1
    mid = (a+b)/2;
    if sin(mid) < y
      a = mid;       % updates the lower bound to the midpoint
      mid = (a + mid)/2;
    else
      b = mid;       % updates the upper bound
      mid = (b + mid)/2;
    endif
  endwhile
  display(mid)
else
  display("Only input between -1 and 1")
endif