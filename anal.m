J=0.3532;%ת������
P10=(F1.*t1)';
P20=(F2.*t2)';%����
r=0.2*[costheta',sintheta',zeros(8,1)];%λ��ʸ��
L=zeros(9,3);I=zeros(8,3);
%������������û��Ӱ�죬֮ǰ�ĺ���Ҳû��Ӱ��

%�����⣺
%-0.1~0s:
P0=P10;
for i=1:9
P=[P0(:,i).*costheta'*cosphy,P0(:,i).*sintheta'*cosphy,P0(:,i)*sinphy];
%ÿһ��ĳ���
  for j=1:8
    I(j,:)=cross(r(j,:),P(j,:));
    %��һ���ÿ����ĳ�����
  end
L(i,1)=sum(I(:,1));
L(i,2)=sum(I(:,2));
L(i,3)=sum(I(:,3));
%��һ��ĽǶ���
end
W1=L/J;%ĩ���ٶ�
Phy1=W1*0.1*0.5;

%0~0.1s:
P0=P20;
for i=1:9
P=[P0(:,i).*costheta'*cosphy,P0(:,i).*sintheta'*cosphy,P0(:,i)*sinphy];
%ÿһ��ĳ���
  for j=1:8
    I(j,:)=cross(r(j,:),P(j,:));
    %��һ���ÿ����ĳ�����
  end
L(i,1)=sum(I(:,1));
L(i,2)=sum(I(:,2));
L(i,3)=sum(I(:,3));
%��һ��ĽǶ���
end
W2=L/J;%ĩ���ٶ�
Phy2=W2*0.1*0.5+W1*0.1;

W=W1+W2;
Phy=Phy1+Phy2;
