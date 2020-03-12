clear 
load('PSSM317.mat');
num_S=length(fidcl);
shu=cell(num_S,1);
for i=1:num_S
    [M,N]=size(fidcl{i}.data);
    shu{i}=fidcl{i}.data(1:M-5,1:20);
end
Consensus(shu);
