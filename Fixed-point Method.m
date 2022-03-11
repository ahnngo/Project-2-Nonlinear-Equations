% compute sin(x) = an enterred number
display("Calculate sin(x) = y");

y = input("Provide a number for this algorithm: ");

% enter tolerance
e = input("Enter your tolerance: ");

% create upper and lower bound that x must be in
if (-1 <= y && y <= 1)
  a = -pi/2;
  b = pi/2;
  j = 0;
  while abs((b-a)/b) > e
    m = y + b - sin(b);
    b = m;
    m1 = y + m - sin(m);
    a = m1;
    j = j+2
  endwhile
  display(b)
else
  display("Only input between -1 and 1")
endif