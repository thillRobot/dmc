FID = fopen('output_data.csv','w');

x=999.9

A = fprintf(FID,'%f',x)

fclose(FID);