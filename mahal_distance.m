clc,clear all,close all
a = [1,1,4,2]';
b = [2,6,4,4]';
ab = [a,b] %��ϳ�����G��������Э����C�;�ֵmu
mua = mean(a);
mub = mean(b);
c = cov(a,b);%��Э�������
muc = [mua, mub]';%��ֵ����
invc = inv(c)
x1 = [1,1;1,-1;-1,1]';%�൱��һ��������3��2*1������
x2 = [1,1]'%������һ���������������Ƚ�
muc1 = repmat(muc,[1,3])%������������չ�ɾ���

ma_dist1 = sqrt([x1 - muc1]' * invc * [x1 - muc1])%���Ͼ��빫ʽ�����3*3
ma_dist2 = sqrt([x2 - muc]' * invc * [x2 - muc])%���Ͼ��빫ʽ�����1*1

qq1 = mahalanobis(x1',muc1',c)%���ú�����⣬������������ֵ��Э�������
qq2 = mahalanobis(x2',muc',c)%���ú�����⣬������������ֵ��Э�������
