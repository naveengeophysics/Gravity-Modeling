function g = cylinder_anomaly (R,rho,z)
  G = 6.67e-11;
  K = 2*pi*G;
  [x,y] = meshgrid(-1000:10:1000,-1000:10:1000);
  g = K*R*R*rho*z./(x.^2 + z^2)*10e+5;
%   surf(x,y,g);
%   xlabel('X (mtr.) ----->');
%   ylabel('Y (mtr.)------>');
%   zlabel('gravity diff. (mGal) ---->');
%   title('Gravity Anomaly due to a Horizontal Cylinder');
end
