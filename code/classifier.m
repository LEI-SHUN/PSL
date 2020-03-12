clear;

%% load data
load('317absEN.mat')
load('CTM317.mat')
X=[AECA CTM ];
b=[112,47,55,34,52,17];
N=sum(b);
label=[ones(b(1),1);2*ones(b(2),1);3*ones(b(3),1);4*ones(b(4),1);5*ones(b(5),1);6*ones(b(6),1)];

%% Dimensionality reduction
[mappedX, mapping] = lda(X, label, 5)
shu=mappedX;
shu=zscore(shu);

%% Jackknife test
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

    %% KNN
%     [predict_label(i),~,class_count]=KNN(test_shu,test_label,train_shu,train_label,1,6);

    %% Logistic regression
    % [all_theta] = oneVsAll(train_shu, train_label, 4, 0.1);
    %  predict_label(i) = predictOneVsAll(all_theta, test_shu);

    %% ELM
    % T=train_label';
    % P=train_shu';
    % TV.T=test_label';
    % TV.P=test_shu';
    % [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,predict_label(i)] = ELM(T, P,TV, 1, 20, 'sig');

end

ACC=100*sum(label==predict_label')/N
[Sn,Sp,MCC,Pacc,Pre,F]=Results(label,predict_label);
jieguo=100.*Sn;
acc=Pacc.*100 
zuizhongjieguo=[jieguo;ACC]
