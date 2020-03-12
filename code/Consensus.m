%get consensus sequence according to PSSM
function Consensus(data)
t0=['A','R','N','D','C','Q','E','G','H','I','L','K','M','F','P','S','T','W','Y','V'];
len=length(data);
fidout=fopen('Consensus317.txt','wt');
for i=1:len
    str=[];
    a=data{i};
    [m,n]=size(a);
    for j=1:m
        [~,index]=max(a(j,:));
        str=[str,t0(index)];
    end
    for j=1:m
        if j==m
            fprintf(fidout,'%c\n',str(j));
        else
            fprintf(fidout,'%c',str(j));
        end
    end
    
end

    
    
