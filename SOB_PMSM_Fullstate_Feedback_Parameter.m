clc;
clear all;

Psi       = 0.017;
PolePairs = 4.0;

Km=1.5*Psi*PolePairs;
L=0.4e-3;
Jm=4.675e-4;
R= 0.2;
Bf=3.7e-3;
P=4;

ac1 = 1;
ac2 = 10;
ac3 = 500; % 90/50
id2 = 4;
id3 = 500;

for i=1:16 
    y1(i)=-ac1+(ac1/8)*i;
    a1(i)=ac1*4;
    c1(i)=ac1*(8/3);
end

for j=1:16
    y2(j)=-ac2+(ac2/8)*j;
    yi2(j)=-id2 + (id2/8)*j;
    i2(j)=id2*(4/3);
    a2(j)=ac2*4;
    c2(j)=ac2*(8/3);
end

for k=1:16
    y3(k)=-ac3+(ac3/8)*k;
    yi3(k)=-id3 + (id3/8)*k;
    i3(k)=id3*(4/3);
    a3(k)=ac3*4;
    c3(k)=ac3*(8/3);
end

mean1=[y1]';
mean2=[y1; y1]';
mean3=[yi2;yi2]';
mean4=[y2;y2;y2]';
mean5=[yi3;yi3;yi3]';
mean6=[y3;y3;y3;y3]';

id2_init=[i2]';
id3_init=[i3]';

ac1_init=[a1]';
ac2_init=[a2]';
ac3_init=[a3]';

cr1_init=[c1]';
cr2_init=[c2]';
cr3_init=[c3]';
