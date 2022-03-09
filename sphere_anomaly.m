function g = sphere_anomaly(R,rho,z)
    G = 6.67e-11;
    K = 4*pi*G/3;
    [x,y] = meshgrid(-1000:10:1000,-1000:10:1000);
    g = (K*R*R*R*rho*z./(x.*x + y.*y + z.*z).^1.5)*10e+5;
    surf(x,y,g);
    xlabel('X (mtr.) ----->');
    ylabel('Y (mtr.)------>');
    zlabel('\Delta g (mGal) ---->');
    title('Gravity Anomaly due to a Sphere');
end
