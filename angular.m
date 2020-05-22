J=0.3532;%转动惯量
P10=(F1.*t1)';
P20=(F2.*t2)';%冲量
r=0.2*[costheta',sintheta',zeros(8,1)];%位移矢量
L=zeros(9,3);I=zeros(8,3);
%重力对于力矩没有影响，之前的合力也没有影响

%-0.1~0s:
P0=P10;
for i=1:9
P=[P0(:,i).*costheta'*cosphy,P0(:,i).*sintheta'*cosphy,P0(:,i)*sinphy];
%每一组的冲量
  for j=1:8
    I(j,:)=cross(r(j,:),P(j,:));
    %这一组的每个点的冲量矩
  end
L(i,1)=sum(I(:,1));
L(i,2)=sum(I(:,2));
L(i,3)=sum(I(:,3));
%这一组的角动量
end
W1=L/J;%末角速度
Phy1=W1*0.1*0.5;

%0~0.1s:
P0=P20;
for i=1:9
P=[P0(:,i).*costheta'*cosphy,P0(:,i).*sintheta'*cosphy,P0(:,i)*sinphy];
%每一组的冲量
  for j=1:8
    I(j,:)=cross(r(j,:),P(j,:));
    %这一组的每个点的冲量矩
  end
L(i,1)=sum(I(:,1));
L(i,2)=sum(I(:,2));
L(i,3)=sum(I(:,3));
%这一组的角动量
end
W2=L/J;%末角速度
Phy2=W2*0.1*0.5+W1*0.1;

W=W1+W2;
Phy=Phy1+Phy2;
