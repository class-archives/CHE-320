clear all
close all
clc
n_spl=2000;  % Sample size
mu=23;
sigma=5;

ranno=rand(n_spl,1);
age=norminv(ranno,mu,sigma);   
histogram(age)
figure()
histogram(age,'Normalization','cumcount')
figure()
histogram(age,'Normalization','cdf')

hold on
x=linspace(14,32);
y=normcdf(x,mu,sigma);
plot(x,y,'LineWidth',2)
yln=logncdf(x,3.15,.06);
plot(x,yln,'LineWidth',2,'color','blue')
figure()
probplot(age)
figure()
probplot('lognormal',age)
