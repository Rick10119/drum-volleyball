F=zeros(10,3);
t1=0.1;t2=0.05;
sin12=sin(pi/15);
cos12=cos(pi/15);
for i=1:10
sintheta(i)=sin((i-1)*pi/5);
costheta(i)=cos((i-1)*pi/5);
end

V=[-0.0897739*cos12,-0.0897739*sin12,0];
vx0=0.059849;
vy0=3.43;
a=V/t1;
ah=0.0897739/t1;
az=0.381/t1;
m=3.6;m1=0.27;
g=9.8;