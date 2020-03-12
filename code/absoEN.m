%%calculate the absolute entropy
%%input PSSM
function AECA=absoEN(data)
[M,N]=size(data);
KL1=zeros(N,N);
KL2=zeros(N,N);
KL=zeros(N,N);

for i=1:N
    for j=i+1:N
        KL1(i,j)=sum(data(:,i).*log(data(:,i)./data(:,j)));
        KL2(i,j)=sum(data(:,j).*log(data(:,j)./data(:,i)));
        KL(i,j)=(KL1(i,j)+KL2(i,j))/2;
    end
end
AECA=[KL(1,2:N),KL(2,3:N),KL(3,4:N),KL(4,5:N),KL(5,6:N),KL(6,7:N),KL(7,8:N),KL(8,9:N),KL(9,10:N),KL(10,11:N),KL(11,12:N),KL(12,13:N),KL(13,14:N),KL(14,15:N),KL(15,16:N),KL(16,17:N),KL(17,18:N),KL(18,19:N),KL(19,20:N)];


        

