
m=length(fa);
s_tran=zeros(m,20);
en_tran=zeros(m,20);
for i=1:m
    s_tran(i,:)=sum(fa{i},2);
end

for i=1:m
    aa{i}=fa{i}/sum(sum(fa{i}));
    b=(aa{i}~=0);
    for j=1:20
        en_tran(i,j)=-sum(aa{i}(j,b(j,:)).*log(aa{i}(j,b(j,:))));
         if isnan(en_tran(i,j))
            en_tran(i,j)=0;
        end
    end
end
CTM=[en_tran s_tran];
save CTM317.mat CTM