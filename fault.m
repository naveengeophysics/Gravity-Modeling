function g = fault(dip,t,z1,s,rho)
  G = 6.67e-11;
  K = 2*G*rho;
  [x,y] = meshgrid(-5000:200:5000,-5000:200:5000);
  beta = pi/2 - deg2rad(dip);
  z2 = z1+t;
  z3 = z1+s*sind(dip);
  z4 = z3 + t;
  r1 = sqrt(z1^2 + (x+z1*cotd(dip)).^2);
  r2 = sqrt(z2^2 + (x+z2*cotd(dip)).^2);
  r3 = sqrt(z3^2 + (x+z3*cotd(dip)).^2);
  r4 = sqrt(z4^2 + (x+z4*cotd(dip)).^2);
  theta1 = atan((x+z1*cotd(dip))/z1);
  theta2 = atan((x+z2*cotd(dip))/z2);
  theta3 = atan((x+z3*cotd(dip))/z3);
  theta4 = atan((x+z4*cotd(dip))/z4);
  
  A = (z2*theta2 - z1*theta1) + x.*(theta2 - theta1)*sin(beta)*cos(beta) + x.*log(r2./r1)*(cos(beta))^2;
  B = (z4*theta4 - z3*theta3) + x.*(theta4 - theta3)*sin(beta)*cos(beta) + x.*log(r4./r3)*(cos(beta))^2;
  g = K*(pi*t + (A - B))*10e+5;
  %surf(x,y,g);
end