function [Sn,Sp ,MCC,Pacc,Pre,F] =Results( test_label,predict_label )
    num_S=size(test_label,1);
    num_F=length(unique(test_label));
    tp=zeros(num_F,1);
    tn=zeros(num_F,1);
    fn=zeros(num_F,1);
    fp=zeros(num_F,1);
    for j=1:num_F
        for i=1:num_S
            if  test_label(i)==j
                if  predict_label(i)==j
                    tp(j)=tp(j)+1;
                else
                    fn(j)=fn(j)+1;
                end
            else if predict_label(i)==j
                    fp(j)=fp(j)+1;
                 end
            end
        end
    end
    disp(tp)
    for i=1:num_F
        tn(i)=num_S-tp(i)-fp(i)-fn(i);
    end

    Sn=zeros(num_F,1);
    Sp=zeros(num_F,1);
    MCC=zeros(num_F,1);
    Pacc=zeros(num_F,1);
    Pre=zeros(num_F,1);
    F=zeros(num_F,1);
    for i=1:num_F
        Sn(i)=tp(i)/(tp(i)+fn(i));
        Sp(i)=tn(i)/(tn(i)+fp(i));
        MCC(i)=(tp(i)*tn(i)-fp(i)*fn(i))/sqrt((tp(i)+fp(i))*(tp(i)+fn(i))*(tn(i)+fp(i))*(tn(i)+fn(i)));
        Pacc(i)=(tp(i)+tn(i))/(tp(i)+tn(i)+fp(i)+fn(i));
        Pre(i)=tp(i)/(tp(i)+fp(i));
        F(i)=2*(Pre(i)*Sn(i))/(Pre(i)+Sn(i));
    end
end

