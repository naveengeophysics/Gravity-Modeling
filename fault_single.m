function g = fault_single(dip,t,z1,rho)  
  G = 6.67e-11;
  K = 2*G*rho;
  [x,y] = meshgrid(-5000:200:5000,-5000:200:5000);
  beta = pi/2 - deg2rad(dip);
  z2 = z1+t;
  r1 = sqrt(z1^2 + (x+z1*cotd(dip)).^2);
  r2 = sqrt(z2^2 + (x+z2*cotd(dip)).^2);
  theta1 = atan((x+z1*cotd(dip))/z1);
  theta2 = atan((x+z2*cotd(dip))/z2);
  g = K*((pi*t/2) + (z2*theta2 - z1*theta1) + x.*(theta2-theta1)*sin(beta)*cos(beta) + x.*log(r2./r1)*((cos(beta))^2))*10e+5;
%   surf(x,y,g);
%   xlabel('X (mtr.) ---->');
%   ylabel('Y (mtr.) ---->');
%   title('Gravity anomaly due to Horizontal block terminates at a dipping plane');
end