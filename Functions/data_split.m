function stats = data_split(loni,lati)
	month_start = 1;month_end = 12;
	path = ['/home/rengz/data/transfer/'];
	for i = 1:size(loni,4)
		filename = ['Month_' num2str(i) '.mat'];
		filename = [path filename];
		lon = loni(:,:,:,i,:);
		lat = lati(:,:,:,i,:);
		save(filename,'lon','lat','-v7.3');
		clear lon lat
		disp(num2str(i));
	end
	stats = 1;
end
