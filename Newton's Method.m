% compute sin(x) = an enterred number
display("Calculate sin(x) = y");

y = input("Provide a number for this algorithm: ");

% enter tolerance
e = input("Enter your tolerance: ");

% create upper and lower bound that x must be in
if (-1 <= y && y <= 1)
  a = 1;
  m = cos(y);
  b = a + (y-sin(a))/m;
  j = 0
  while (abs(b-a)/b) > e
    j = j + 1
    a = b;
    b = a + (y-sin(a))/m;
  endwhile
  display(b)
else
  display("Only input between -1 and 1")
endif