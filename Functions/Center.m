function [center_lon,center_lat] = Center(pari_lon,pari_lat)
%Hello
    par_lon = [];par_lat = [];
    for i = 1:length(pari_lon)
       if (~isnan(pari_lon(i)))&&(~isnan(pari_lat(i)))
           par_lon = [par_lon pari_lon(i)];
           par_lat = [par_lat pari_lat(i)];
       end
    end
    par_lon = rmmissing(par_lon);
    par_lat = rmmissing(par_lat);
	total = length(par_lon);
	lon = par_lon*pi/180;
	lat = par_lat*pi/180;
	a = cos(lat) .* cos(lon);
	b = cos(lat) .* sin(lon);
	c = sin(lat);
	x = sum(a)/total ;y = sum(b)/total; z = sum(c)/total;
	center_lon = atan2(y,x)*180/pi;
	hyp = sqrt(x*x+y*y);
	center_lat = atan2(z,hyp)*180/pi;
end
