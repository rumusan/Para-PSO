function J=J_func(t,pm1,pm2,pm3,pm4,pm5,pm6)
%
%FPT模型计算
%输入:
%  t  :t
%  pm1:alpha
%  pm2:beta
%  pm3:lambda
%  pm4:eta_1
%  pm5:eta_2
%  pm6:eta_3
%输出:
%  J:J(t)

J1=(t^pm3) / (pm6*gamma(1+pm3));
z=-t^(pm1-pm2) / (pm4/pm5);
J2=(t^pm1) * mlf(pm1-pm2,1+pm1,z) / pm4;   % mlf函数效率比较低
% J2=(t^pm1) * ml(pm1-pm2,1+pm1,z) / pm4;      % ml 函数效率比较高
J=J1+J2;










