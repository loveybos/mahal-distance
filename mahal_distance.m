clc,clear all,close all
a = [1,1,4,2]';
b = [2,6,4,4]';
ab = [a,b] %组合成总体G，用来求协方差C和均值mu
mua = mean(a);
mub = mean(b);
c = cov(a,b);%求协方差矩阵
muc = [mua, mub]';%均值向量
invc = inv(c)
x1 = [1,1;1,-1;-1,1]';%相当于一次性输入3个2*1的样本
x2 = [1,1]'%另输入一个单独的样本做比较
muc1 = repmat(muc,[1,3])%将矩阵向量扩展成矩阵

ma_dist1 = sqrt([x1 - muc1]' * invc * [x1 - muc1])%马氏距离公式，输出3*3
ma_dist2 = sqrt([x2 - muc]' * invc * [x2 - muc])%马氏距离公式，输出1*1

qq1 = mahalanobis(x1',muc1',c)%调用函数求解，输入样本、均值、协方差矩阵
qq2 = mahalanobis(x2',muc',c)%调用函数求解，输入样本、均值、协方差矩阵
