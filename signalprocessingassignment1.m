%Signal processing Assignment

%Assignment of values to variables
s=1-1/2+1/3-1/4+1/5-1/6+1/7-1/8+1/9-1/10;
sin(pi/4);

%Deterministic Signals
sin(pi/2);
t1=[-pi,-pi/2,0,pi/2,pi];
sin(t1);

%Defining a vector
t2=(0:0.01:1);

%Number of values in t
length(t2);

s1=sin(2*pi*1*t2);
plot(t2,s1);

%Plotting a sine wave of higher frequency
s2=sin(2*pi*10*t2);
plot(t2,s2);

s3=sin(2*pi*20*t2);
plot(t2,s3);

%Combining the vectors
s=s1+s2+s3;
plot(t2,s);

%Stochastic signals
%Normally distributed signals

m=1;
n=length(t);
t=(0:0.001:5);

v_bar1=0;
sigma1=0.2/(2*3^1/2);
v_norm_1=v_bar1+sigma1*randn(m,n);

v_bar2=0;
sigma2=0.4/(2*3^1/2);
v_norm_2=v_bar2+sigma2*randn(m,n);

v_bar3=1;
sigma3=0.4/(2*3^1/2);
v_norm_3=v_bar3+sigma3*randn(m,n);

%Three normally distributed signals using before defined stochastic signals

num_norm_1=histc(v_norm_1,-1:0.005:2);
num_norm_2=histc(v_norm_2,-1:0.005:2);
num_norm_3=histc(v_norm_3,-1:0.005:2);

figure(1)
hold on
plot( -1:0.005:2, num_norm_1,'r')
plot( -1:0.005:2, num_norm_2,'g')
plot( -1:0.005:2, num_norm_3,'b')

figure(3)
hold on
plot (v_norm_1,'r')
plot (v_norm_2,'g')
plot (v_norm_3,'b')

%Creating matrices containing uniformly distributed elements
%Uniformly distributed signals

a1=-0.1;
b1=0.1;
v_uni_1=a1+(b1-a1)*rand(m,n);

a2=-0.2;
b2=0.2;
v_uni_2=a2+(b2-a2)*rand(m,n);

a3=0.8;
b3=1.2;
v_uni_3=a3+(b3-a3)*rand(m,n);

%Three uniformly distributed signals using before defined stochastic signals

num_uni_1=histc(v_uni_1,-1:0.005:2);
num_uni_2=histc(v_uni_2,-1:0.005:2);
num_uni_3=histc(v_uni_3,-1:0.005:2);

figure(2)
hold on
plot( -1:0.005:2, num_uni_1,'r')
plot( -1:0.005:2, num_uni_2,'g')
plot( -1:0.005:2, num_uni_3,'b')

figure(4)
hold on
plot (v_uni_1,'r')
plot (v_uni_2,'g')
plot (v_uni_3,'b')

