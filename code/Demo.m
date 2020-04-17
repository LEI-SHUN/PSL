clear 

%% load extracted feature data of proteins
load('CTM317.mat')
load('317absEN.mat')

X=[AECA CTM];
% X=zscore(X);
b=[112,47,55,34,52,17];
N=sum(b);
label=[ones(b(1),1);2*ones(b(2),1);3*ones(b(3),1);4*ones(b(4),1);5*ones(b(5),1);6*ones(b(6),1)];

%Dimensionality reduction
[mappedX, mapping] = lda(X, label, 5)
shu=mappedX;
shu=zscore(shu);

%Jackknife test
for i=1:N
    index=1:N;
    test_shu=shu(i,:);
    test_label=label(i,:);
    
    index=find(index~=i);
    train_shu=shu(index,:);
    train_label=label(index,:);
    
    %% SVM
    model=svmtrain(train_label,train_shu,'-t 2 ');
    [predict_label(i),accuracy,~]=svmpredict( test_label,test_shu,model);
end
% results
 OA=100*sum(label==predict_label')/N
 [Sn,Sp,MCC,Pacc,Pre,F]=Results(label,predict_label);
 jieguo=100.*Sn;
 acc=Pacc.*100
 zuizhongjieguo=[jieguo;OA]
