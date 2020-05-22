v20=0:0.01:3;
for i=1:numel(v20)
the(i)=(180/pi)*4*0.0599/(7*(3.43+v20(i)));
end
plot(v20,the);