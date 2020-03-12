clear; 
load('PSSM317.mat')
num_S=length(fidcl);
%All protein sequences are normalized
c=cell(num_S,1);
for t=1:num_S
    shu=fidcl{t}.data;
    %Know the number of each protein, extract the matrix,
    [M,N]=size(shu);
    shuju=shu(1:M-5,1:20);
    d=[];
    for i=1:M-5
        for j=1:20
            d(i,j)=1/(1+exp(-shuju(i,j)));
        end
    end
    c{t}=d(:,:);
end

AECA=zeros(num_S,190);
for i=1:num_S
    AECA(i,:)=absoEN(c{i});
end
save 317absEN.mat AECA

