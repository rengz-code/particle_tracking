function [lon,lat] = Euler(lon,lat,u,v,dt)
% This is the Euler method!
%
%
	day2sec = 3600*24;
	R = 111000;
	for i = 1:length(lon)
		lon(i) = lon(i)+u(i)*dt*day2sec./(R*cosd(lat(i)));
    	lat(i) = lat(i)+v(i)*dt*day2sec/R;
    end
end
