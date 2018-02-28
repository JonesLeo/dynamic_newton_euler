% ���ȶ�����������ѧ���̵�����
% ��Щ����Ϊ������������ʱû�У�Ҳ��ʱ����ɷ��ű�����
% ����Ϊ6���ؽڵĽǶȣ� q1 - q6 
% 6���ؽڵĽ��ٶȣ� dq1 - dq6
% 6���ؽڵĽǼ��ٶ� �� ddq1 - ddq6
% ��Ҫ������м��� 
% 6�����˵Ľ��ٶ� �� w1- w6
% 6�����˵ĽǼ��ٶ� �� dw1 - dw6 
% % 6�����˵����ٶ� �� v1 - v6 
% 6�����˵��߼��ٶ� �� dv1 - dv6
% 6����������λ�õ��߼��ٶ� �� dvc1 - dvc6
% 6���������Ĵ������� �� F1 - F6
% 6���������Ĵ�ת�� �� N1 - N6
% �����Ƶ��ؽ�ת�ص��������
% 6���ؽ��ϵ����� :  f1 - f6
% 6���ؽ��ϵ����� �� n1 - n6
% 6���ؽ�Z��������ת�� �� torque_1 - torque_6

%�����м���Ҫ�ĳ��� ���� ��
% 6�����˵����� �� m1 - m6
% 6�����˵�����λ������ �� Pcm_1 - Pcm_6
% 6�����˵����ĵ�λ�õ�ת������ �� I_1 - I_6 �� Ixy_1, Ixx_1,Ixz_1,Iyz_1,Iyy_1,Izz_1
% 6������ϵ֮��ı任���� �� R12 - R56 �� ������� R21 - R65
% 6���ؽڵ����ҡ�����ֵ �� c1 - c6 ,s1 -s6


%���������
syms q1   q2   q3   q4   q5   q6
syms dq1  dq2  dq3  dq4  dq5  dq6
syms ddq1 ddq2 ddq3 ddq4 ddq5 ddq6

syms w1  w2  w3  w4  w5  w6
syms dw1 dw2 dw3 dw4 dw5 dw6
syms v1   v2   v3   v4   v5   v6
syms dv1  dv2  dv3  dv4  dv5  dv6
syms dvc1 dvc2 dvc3 dvc4 dvc5 dvc6

syms F1 F2 F3 F4 F5 F6
syms N1 N2 N3 N4 N5 N6

syms f1 f2 f3 f4 f5 f6
syms n1 n2 n3 n4 n5 n6
syms torque_1 torque_2 torque_3 torque_4 torque_5 torque_6

%������Ҫ����ĳ���
syms m1 m2 m3 m4 m5 m6
syms Pcm_1 Pcm_2 Pcm_3 Pcm_4 Pcm_5 Pcm_6
syms cm_x_1 cm_x_2 cm_x_3 cm_x_4 cm_x_5 cm_x_6
syms cm_y_1 cm_y_2 cm_y_3 cm_y_4 cm_y_5 cm_y_6
syms cm_z_1 cm_z_2 cm_z_3 cm_z_4 cm_z_5 cm_z_6

Pcm_1 = [cm_x_1 cm_y_1 cm_z_1];
Pcm_2 = [cm_x_2 cm_y_2 cm_z_2];
Pcm_3 = [cm_x_3 cm_y_3 cm_z_3];
Pcm_4 = [cm_x_4 cm_y_4 cm_z_4];
Pcm_5 = [cm_x_5 cm_y_5 cm_z_5];
Pcm_6 = [cm_x_6 cm_y_6 cm_z_6];

syms I_1 I_2 I_3 I_4 I_5 I_6
syms Ixy_1 Ixx_1 Ixz_1 Iyz_1 Iyy_1 Izz_1
syms Ixy_2 Ixx_2 Ixz_2 Iyz_2 Iyy_2 Izz_2
syms Ixy_3 Ixx_3 Ixz_3 Iyz_3 Iyy_3 Izz_3
syms Ixy_4 Ixx_4 Ixz_4 Iyz_4 Iyy_4 Izz_4
syms Ixy_5 Ixx_5 Ixz_5 Iyz_5 Iyy_5 Izz_5
syms Ixy_6 Ixx_6 Ixz_6 Iyz_6 Iyy_6 Izz_6

I_1=[Ixx_1 -Ixy_1 -Ixz_1;
     -Ixy_1 Iyy_1 -Iyz_1;
     -Ixz_1 -Iyz_1 Izz_1];
 
I_2=[Ixx_2 -Ixy_2 -Ixz_2;
     -Ixy_2 Iyy_2 -Iyz_2;
     -Ixz_2 -Iyz_2 Izz_2];
 
I_3=[ Ixx_3 -Ixy_3 -Ixz_3;
     -Ixy_3  Iyy_3 -Iyz_3;
     -Ixz_3 -Iyz_3  Izz_3];

I_4=[ Ixx_4 -Ixy_4 -Ixz_4;
     -Ixy_4  Iyy_4 -Iyz_4;
     -Ixz_4 -Iyz_4  Izz_4];
 
I_5=[ Ixx_5 -Ixy_5 -Ixz_5;
     -Ixy_5  Iyy_5 -Iyz_5;
     -Ixz_5 -Iyz_5  Izz_5];
 
I_6=[ Ixx_6 -Ixy_6 -Ixz_6;
     -Ixy_6  Iyy_6 -Iyz_6;
     -Ixz_6 -Iyz_6  Izz_6];
 
%������ת����
syms R12 R23 R34 R45 R56
syms R21 R32 R43 R54 R65
syms c1 c2 c3 c4 c5 c6 
syms s1 s2 s3 s4 s5 s6

R12 = [c2 -s2 0;0,0,1;-s2 -c2 0,0;];
R23 = [c3 -s3 0;s3 c3 0;0 0 1];
R34 = [c4 -s4 0;0 0 1;-s4 -c4 0];
R45 = [c5 -s5 0;0 0 1;s5 c5 0];
R56 = [c6 -s6 0;0 0 1;-s6 -c6 0];

s1 = sin(q1);
s2 = sin(q2);
s3 = sin(q3);
s4 = sin(q4);
s5 = sin(q5);
s6 = sin(q6);

c1 = cos(q1);
c2 = cos(q2);
c3 = cos(q3);
c4 = cos(q4);
c5 = cos(q5);
c6 = cos(q6);





w1  = dq1*[0;0;1]
dw1 = ddq1*[0;0;1]
dv1 = 0
dvc1 = 0
F1 = m1*dvc1 
N1 = I_1*dw1 



