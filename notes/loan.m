function [mpay, tpay] = loan(amount, rate, years)
%loan calculates monthly and total payment of loan
%input arguments
%   amount - loan amount in $
%   rate - annual interest rate in percent.
%   years - number of years
%Output arguments
%   mpay - monthly payment
%   tpay - total payment

ratem = rate * 0.01 / 12;
a = 1+ratem;
b = (a^(years*12)-1)/ratem;
mpay = amount*a^(years*12)/(a*b);
tpay = mpay*years*12;