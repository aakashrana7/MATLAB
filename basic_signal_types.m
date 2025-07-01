close all;
clear all;
clc;

f=10;
t=-10:0.5:10;

cosine=100*cos(100*t);

subplot(3,3,1);
plot(t,cosine);
xlabel('Time(T)');
ylabel('Amplitude(A)');
title('Cosine wave(KAN078BCT009)');

n=-10:1:10;
subplot(3,3,2);
array1=zeros(size(n));
array1(n==0)=1;
stem(n,array1);
xlabel('Period(N)');
ylabel('Amplitude(A)');
title('Impulse wave(KAN078BCT009)');

subplot(3,3,3);
plot(n,array1,'o-');
xlabel('Period(N)');
ylabel('Amplitude(A)');
title('with plot in impulse wave(KAN078BCT009)');

subplot(3,3,4);
array2=zeros(size(n));
array2(n>=0)=1;
stem(n,array2);
xlabel('Period(N)');
ylabel('Amplitude(A)');
title('Unit wave(KAN078BCT009)');

subplot(3,3,5);
array3=zeros(size(n));
array3=(n.*(n>=0));
stem(n,array3)
xlabel('Period(N)');
ylabel('Amplitude(A)');
title('Ramp wave(KAN078BCT009)');


a1=2;
a2=-2;
b1=0.3;
b2=-0.3;

y1=a1*exp(b1*n);
y2=a2*exp(b2*n);
y3=a1*exp(b2*n);
y4=a2*exp(b1*n);

subplot(3,3,6);
stem(n,y1);
xlabel('Period(N)');
ylabel('Amplitude(A)');
title('Exp wave for a and b +ve(KAN078BCT009)');

subplot(3,3,7);
stem(n,y2);
xlabel('Period(N)');
ylabel('Amplitude(A)');
title('Exp wave for a and b -ve(KAN078BCT009)');

subplot(3,3,8);
stem(n,y3);
xlabel('Period(N)');
ylabel('Amplitude(A)');
title('Exp wave for a +ve only(KAN078BCT009)');

subplot(3,3,9);
stem(n,y4);
xlabel('Period(N)');
ylabel('Amplitude(A)');
title('Exp wave for b +ve only(KAN078BCT009)');

