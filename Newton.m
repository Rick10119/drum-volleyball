%-0.1~0s
Px1=F1.*t1*costheta'*cosphy;
Py1=F1.*t1*sintheta'*cosphy;
Pz1=F1.*t1*ones(8,1)*sinphy;
%合力1
%重力和之前绳子力的合力为零


m=3.6;%质量
g=9.8;%重力加速度


Vx1=Px1/m;
Vy1=Py1/m;
Vz1=Pz1/m;
V1=[Vx1,Vy1,Vz1];
X1=V1*0.1*0.5;

%0~0.1s:
Px2=F2.*t2*costheta'*cosphy;
Py2=F2.*t2*sintheta'*cosphy;
Pz2=F2.*t2*ones(8,1)*sinphy-m*g*0.1;
%合力2
Vx2=Px2/m;
Vy2=Py2/m;
Vz2=Pz2/m;
V2=[Vx2,Vy2,Vz2];
X2=V2*0.1*0.5+V1*0.1;

X=X1+X2;
V=V1+V2;

