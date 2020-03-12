% clear all
% clc

% % load('cl317absKL.mat')
% load('cl317absKL')
X=[s_ertai as_ertai absKL ];
%  X=[ge_ertai];
% b=[112,47,55,34,52,17];
b=[70,89,25,41];
N=sum(b);
% b=[43,30,13,12];
% label=[ones(b(1),1);2*ones(b(2),1);3*ones(b(3),1);4*ones(b(4),1);5*ones(b(5),1);6*ones(b(6),1)];
label=[ones(b(1),1);2*ones(b(2),1);3*ones(b(3),1);4*ones(b(4),1)];
shu=zscore(X);

for i=2:N-1
    test_shu(i,:)=shu(i,:);
    test_label(i)=label(i);
a=shu(1:i-1,:);
b=shu(i+1:end,:);
train_shu=[a;b];
c=label(1:i-1,:);
d=label(i+1:end,:);
train_label=[c;d];
model=svmtrain(train_label,train_shu,' -c 64 -g 0.0039 ' );
[predict_label(i),accuracy,~]=svmpredict( test_label(i),test_shu(i,:),model);
end
%%SVM
model=svmtrain(label(2:N),shu(2:N,:),'  -c 64 -g 0.0039 ' );
[predict_label(1),accuracy,~]=svmpredict( label(1),shu(1,:),model);
model=svmtrain(label(1:N-1),shu(1:N-1,:),'  -c 64 -g 0.0039' );
[predict_label(N),accuracy,~]=svmpredict( label(N),shu(N,:),model);
 ACC=100*sum(label==predict_label')/N
 [Sn,Sp,MCC]=JGCL225_1(label,predict_label);
jieguo=100.*Sn;
zuizhongjieguo=[jieguo;ACC]

