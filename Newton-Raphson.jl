###
  Use the Newton-Raphson method to find the solution to the equation LaTeX: x^5-x+1=0x 5 − x + 1 = 0
  which is closest to zero. Compare this with the answer you calculated using the bisection method.
###

xold=-3;
for i=1:1000
  global xold
  global xnew=xold-(xold^5-xold+1)/(5*xold^4-1);
  global fc=xnew^5-xnew+1;
  if (abs(fc)<10^(-5))
    break
  else
    xold=xnew
  end
  global loop_count=i
end

println(xnew)
println(loop_count)

