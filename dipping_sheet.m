function g = dipping_sheet(dip,t,l,h1,rho)	% t = thickness, l = length of sheet, h1 = depth of uppermost point
  G = 6.67e-11;				% Gravitational constant
  K = 2*G*rho*t;
  [x,y] = meshgrid(-5000:100:5000,-5000:100:5000);	% a 2D grid
  h2 = h1+l*sind(dip);					% h2 = depth of lowermost point of sheet
  r2 = sqrt((x-l*cosd(dip)).^2 + h2^2);
  r1 = sqrt(x.^2 + h1^2);
  theta2 = atan((x-l*cosd(dip))/h2);
  theta1 = atan(x/h1);
  g = K*(sind(dip)*log(r2./r1)+(theta1-theta2)*cosd(dip))*10e+5;	% gravity anomaly formula(in mGal)
end
