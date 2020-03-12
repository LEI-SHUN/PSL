function [predict,acc,class_count]=KNN(test,test_labels,train,train_labels,k,class_num)
%Input£ºtest:-test sample£¬m*b matrix 
%      test_labels:m*1 matrix
%      train£ºtrain sample£¬n*b matrix
%      train_labels£ºn*1 matrix
%      k: number of neighbors
%Output£ºpredict£ºpredict labels ,m*1 matrix
%       acc: accuracy


if nargin<6
    class_num=2;
end
if nargin<5
     disp('Not enough input parameters.')
    return
end
class_count=zeros(1,class_num+1);
m=size(test,1);
n=size(train,1);
predict=zeros(m,1);
distance=zeros(m,n);
%calculate distance
for i=1:m
    for j=1:n
        distance(i,j)=sqrt(sum((test(i,:)-train(j,:)).^2));
    end
end
%neighbors
[ndistance,neighbors]=sort(distance,2);
ndistance=ndistance(:,1:k);
 neighbors=neighbors(:,1:k);
%  neighbors=neighbors(:,1)

%predict
for i=1:m
  
    k_labels=train_labels(neighbors(i,:));
    for j=1:k
    class_index=k_labels(j)+1;
    class_count(class_index)=class_count(class_index)+1;
    end
   [~,predict(i,:)]=max(class_count);
   predict(i,:)=predict(i,:)-1;
   if i==1
       disp(class_count);
   end
   class_count=zeros(1,class_num+1);
end

%accuracy
a=sum(predict==test_labels);
acc=a/m*100;

