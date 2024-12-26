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

id2 = 4;

for j=1:16
    yi2(j)=-id2 + (id2/8)*j;
    i2(j)=id2*(4/3);
end


mean3=[yi2;yi2]';


id2_init=[i2]';
