clear
close all
clc
n_spl=10; % Sample size
n_tsts=20; % Number of tests
figure()
x=linspace(0,10);
y=exp(-x);
plot(x,y)

xbar=zeros(n_tsts,1); % Each test yields one sample mean
obs=zeros(n_tsts,n_spl);
figure()
for j=1:n_tsts % For each test
    ranno=rand(n_spl,1);
    obs(j,:)=-log(ranno); % Value of sample for the exponential distribution                
    xbar(j)=mean(obs(j,:)); %obtain the mean
    plot(obs,'*')
    hold on
end
x=linspace(0,n_tsts,n_tsts);
y=ones(n_tsts,1);

plot(x,y','-')

plot(xbar,'o-')

figure()
histogram(xbar) % Histogram shows the relative frequency

% Make the normal distribution with mu=1 sigma=1
x=linspace(0,2);
var=1/sqrt(n_spl); % Variance of the Xbar is var_X/sqrt(n_spl)
y=normpdf(x,1,var);
hold on
yyaxis right  
plot(x,y)

figure()
histogram(obs)

figure()
scatter(xbar,zeros(20,1))
