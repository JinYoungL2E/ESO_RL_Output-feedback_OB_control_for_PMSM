clc;
clear all;

Psi       = 0.017;
PolePairs = 4.0;

Km=1.5*Psi*PolePairs;
L=0.4e-3;
Jm=4.675e-4;

% actor-critic만 사용할 때
iac1=1;
iac2=4;
iac3=200;

for i=1:16
    y1(i)=-iac1+(iac1/8)*i;
    a1(i)=iac1*5;
    c1(i)=iac1*4;
end

for j=1:16
    y2(j)=-iac2+(iac2/8)*j;
    i2(j)=iac2*(8/50);
    a2(j)=iac2*5;
    c2(j)=iac2*4;
end

for k=1:16
    y3(k)=-iac3+(iac3/8)*k;
    i3(j)=iac3*(8/50);
    a3(k)=iac3*(2);
    c3(k)=iac3*(1.5);
end

mean1=[y1]';
mean2=[y1; y1]';
mean3=[y2;y2]';
mean4=[y2;y2;y2]';
mean5=[y3;y3;y3]';
mean6=[y3;y3;y3;y3]';

ac1_init=[a1]';
ac2_init=[a2]';
ac3_init=[a3]';

cr1_init=[c1]';
cr2_init=[c2]';
cr3_init=[c3]';

% Ku=10;
% g0=0.01*(Km/(Jm*L));
% beta3_lim = (1/(2*g0)+g0/(4*Ku))*1.01;
% gam_a3=((g0^2)/(2*Ku))*1.01;
% gam_c3 =(gam_a3/2)*1.01;

% Ku=100;
% g0=0.01*(Km/(Jm*L));
% beta3_lim = (1/(2*g0)+((g0^2)/(8*Ku)))*1.01;
% gam_a3=((g0)/(4*Ku))*1.01;
% gam_c3 =(gam_a3/2)*1.01;