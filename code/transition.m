clear;
clc

t0=['A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y'];
fidin=fopen('Consensus317.txt');
kongge=0; 
fa={};
flag=1;
while ~feof(fidin)         
    tline=fgetl(fidin);     
    if double(tline(1))>=65&&double(tline(1))<=90 
        L=length(tline); 
        disp(L);
        p=zeros(1,L);
        A=zeros(20,20);
        for i=1:L-kongge-1  
            
%             disp(tline(i));
            a=tline(i);
            switch a
                
                case 'A'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(1,1)=A(1,1)+1;
                        case 'C'
                            A(1,2)=A(1,2)+1;
                        case 'D'
                            A(1,3)=A(1,3)+1;
                        case 'E'
                            A(1,4)=A(1,4)+1;
                        case 'F'
                            A(1,5)=A(1,5)+1;
                        case 'G'
                            A(1,6)=A(1,6)+1;
                        case 'H'
                            A(1,7)=A(1,7)+1;
                        case 'I'
                            A(1,8)=A(1,8)+1;
                        case 'K'
                            A(1,9)=A(1,9)+1;
                        case 'L'
                            A(1,10)=A(1,10)+1;
                        case 'M'
                            A(1,11)=A(1,11)+1;
                        case 'N'
                            A(1,12)=A(1,12)+1;
                        case 'P'
                            A(1,13)=A(1,13)+1;
                        case 'Q'
                            A(1,14)=A(1,14)+1;
                        case 'R'
                            A(1,15)=A(1,15)+1;
                        case 'S'
                            A(1,16)=A(1,16)+1;
                        case 'T'
                            A(1,17)=A(1,17)+1;
                        case 'V'
                            A(1,18)=A(1,18)+1;
                        case 'W'
                            A(1,19)=A(1,19)+1;
                        case 'Y'
                            A(1,20)=A(1,20)+1;
                    end
                   
		        case 'C'
                   switch tline(i+kongge+1)
                        case 'A'
                            A(2,1)=A(2,1)+1;
                        case 'C'
                            A(2,2)=A(2,2)+1;
                        case 'D'
                            A(2,3)=A(2,3)+1;
                        case 'E'
                            A(2,4)=A(2,4)+1;
                        case 'F'
                            A(2,5)=A(2,5)+1;
                        case 'G'
                            A(2,6)=A(2,6)+1;
                        case 'H'
                            A(2,7)=A(2,7)+1;
                        case 'I'
                            A(2,8)=A(2,8)+1;
                        case 'K'
                            A(2,9)=A(2,9)+1;
                        case 'L'
                            A(2,10)=A(2,10)+1;
                        case 'M'
                            A(2,11)=A(2,11)+1;
                        case 'N'
                            A(2,12)=A(2,12)+1;
                        case 'P'
                            A(2,13)=A(2,13)+1;
                        case 'Q'
                            A(2,14)=A(2,14)+1;
                        case 'R'
                            A(2,15)=A(2,15)+1;
                        case 'S'
                            A(2,16)=A(2,16)+1;
                        case 'T'
                            A(2,17)=A(2,17)+1;
                        case 'V'
                            A(2,18)=A(2,18)+1;
                        case 'W'
                            A(2,19)=A(2,19)+1;
                        case 'Y'
                            A(2,20)=A(2,20)+1;
                    end
			    case 'D'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(3,1)=A(3,1)+1;
                        case 'C'
                            A(3,2)=A(3,2)+1;
                        case 'D'
                            A(3,3)=A(3,3)+1;
                        case 'E'
                            A(3,4)=A(3,4)+1;
                        case 'F'
                            A(3,5)=A(3,5)+1;
                        case 'G'
                            A(3,6)=A(3,6)+1;
                        case 'H'
                            A(3,7)=A(3,7)+1;
                        case 'I'
                            A(3,8)=A(3,8)+1;
                        case 'K'
                            A(3,9)=A(3,9)+1;
                        case 'L'
                            A(3,10)=A(3,10)+1;
                        case 'M'
                            A(3,11)=A(3,11)+1;
                        case 'N'
                            A(3,12)=A(3,12)+1;
                        case 'P'
                            A(3,13)=A(3,13)+1;
                        case 'Q'
                            A(3,14)=A(3,14)+1;
                        case 'R'
                            A(3,15)=A(3,15)+1;
                        case 'S'
                            A(3,16)=A(3,16)+1;
                        case 'T'
                            A(3,17)=A(3,17)+1;
                        case 'V'
                            A(3,18)=A(3,18)+1;
                        case 'W'
                            A(3,19)=A(3,19)+1;
                        case 'Y'
                            A(3,20)=A(3,20)+1;
                    end
			    case 'E'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(4,1)=A(4,1)+1;
                        case 'C'
                            A(4,2)=A(4,2)+1;
                        case 'D'
                            A(4,3)=A(4,3)+1;
                        case 'E'
                            A(4,4)=A(4,4)+1;
                        case 'F'
                            A(4,5)=A(4,5)+1;
                        case 'G'
                            A(4,6)=A(4,6)+1;
                        case 'H'
                            A(4,7)=A(4,7)+1;
                        case 'I'
                            A(4,8)=A(4,8)+1;
                        case 'K'
                            A(4,9)=A(4,9)+1;
                        case 'L'
                            A(4,10)=A(4,10)+1;
                        case 'M'
                            A(4,11)=A(4,11)+1;
                        case 'N'
                            A(4,12)=A(4,12)+1;
                        case 'P'
                            A(4,13)=A(4,13)+1;
                        case 'Q'
                            A(4,14)=A(4,14)+1;
                        case 'R'
                            A(4,15)=A(4,15)+1;
                        case 'S'
                            A(4,16)=A(4,16)+1;
                        case 'T'
                            A(4,17)=A(4,17)+1;
                        case 'V'
                            A(4,18)=A(4,18)+1;
                        case 'W'
                            A(4,19)=A(4,19)+1;
                        case 'Y'
                            A(4,20)=A(4,20)+1;
                    end
			    case 'F'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(5,1)=A(5,1)+1;
                        case 'C'
                            A(5,2)=A(5,2)+1;
                        case 'D'
                            A(5,3)=A(5,3)+1;
                        case 'E'
                            A(5,4)=A(5,4)+1;
                        case 'F'
                            A(5,5)=A(5,5)+1;
                        case 'G'
                            A(5,6)=A(5,6)+1;
                        case 'H'
                            A(5,7)=A(5,7)+1;
                        case 'I'
                            A(5,8)=A(5,8)+1;
                        case 'K'
                            A(5,9)=A(5,9)+1;
                        case 'L'
                            A(5,10)=A(5,10)+1;
                        case 'M'
                            A(5,11)=A(5,11)+1;
                        case 'N'
                            A(5,12)=A(5,12)+1;
                        case 'P'
                            A(5,13)=A(5,13)+1;
                        case 'Q'
                            A(5,14)=A(5,14)+1;
                        case 'R'
                            A(5,15)=A(5,15)+1;
                        case 'S'
                            A(5,16)=A(5,16)+1;
                        case 'T'
                            A(5,17)=A(5,17)+1;
                        case 'V'
                            A(5,18)=A(5,18)+1;
                        case 'W'
                            A(5,19)=A(5,19)+1;
                        case 'Y'
                            A(5,20)=A(5,20)+1;
                    end
			    case 'G'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(6,1)=A(6,1)+1;
                        case 'C'
                            A(6,2)=A(6,2)+1;
                        case 'D'
                            A(6,3)=A(6,3)+1;
                        case 'E'
                            A(6,4)=A(6,4)+1;
                        case 'F'
                            A(6,5)=A(6,5)+1;
                        case 'G'
                            A(6,6)=A(6,6)+1;
                        case 'H'
                            A(6,7)=A(6,7)+1;
                        case 'I'
                            A(6,8)=A(6,8)+1;
                        case 'K'
                            A(6,9)=A(6,9)+1;
                        case 'L'
                            A(6,10)=A(6,10)+1;
                        case 'M'
                            A(6,11)=A(6,11)+1;
                        case 'N'
                            A(6,12)=A(6,12)+1;
                        case 'P'
                            A(6,13)=A(6,13)+1;
                        case 'Q'
                            A(6,14)=A(6,14)+1;
                        case 'R'
                            A(6,15)=A(6,15)+1;
                        case 'S'
                            A(6,16)=A(6,16)+1;
                        case 'T'
                            A(6,17)=A(6,17)+1;
                        case 'V'
                            A(6,18)=A(6,18)+1;
                        case 'W'
                            A(6,19)=A(6,19)+1;
                        case 'Y'
                            A(6,20)=A(6,20)+1;
                    end
			    case 'H'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(7,1)=A(7,1)+1;
                        case 'C'
                            A(7,2)=A(7,2)+1;
                        case 'D'
                            A(7,3)=A(7,3)+1;
                        case 'E'
                            A(7,4)=A(7,4)+1;
                        case 'F'
                            A(7,5)=A(7,5)+1;
                        case 'G'
                            A(7,6)=A(7,6)+1;
                        case 'H'
                            A(7,7)=A(7,7)+1;
                        case 'I'
                            A(7,8)=A(7,8)+1;
                        case 'K'
                            A(7,9)=A(7,9)+1;
                        case 'L'
                            A(7,10)=A(7,10)+1;
                        case 'M'
                            A(7,11)=A(7,11)+1;
                        case 'N'
                            A(7,12)=A(7,12)+1;
                        case 'P'
                            A(7,13)=A(7,13)+1;
                        case 'Q'
                            A(7,14)=A(7,14)+1;
                        case 'R'
                            A(7,15)=A(7,15)+1;
                        case 'S'
                            A(7,16)=A(7,16)+1;
                        case 'T'
                            A(7,17)=A(7,17)+1;
                        case 'V'
                            A(7,18)=A(7,18)+1;
                        case 'W'
                            A(7,19)=A(7,19)+1;
                        case 'Y'
                            A(7,20)=A(7,20)+1;
                    end
			    case 'I'
                   switch tline(i+kongge+1)
                        case 'A'
                            A(8,1)=A(8,1)+1;
                        case 'C'
                            A(8,2)=A(8,2)+1;
                        case 'D'
                            A(8,3)=A(8,3)+1;
                        case 'E'
                            A(8,4)=A(8,4)+1;
                        case 'F'
                            A(8,5)=A(8,5)+1;
                        case 'G'
                            A(8,6)=A(8,6)+1;
                        case 'H'
                            A(8,7)=A(8,7)+1;
                        case 'I'
                            A(8,8)=A(8,8)+1;
                        case 'K'
                            A(8,9)=A(8,9)+1;
                        case 'L'
                            A(8,10)=A(8,10)+1;
                        case 'M'
                            A(8,11)=A(8,11)+1;
                        case 'N'
                            A(8,12)=A(8,12)+1;
                        case 'P'
                            A(8,13)=A(8,13)+1;
                        case 'Q'
                            A(8,14)=A(8,14)+1;
                        case 'R'
                            A(8,15)=A(8,15)+1;
                        case 'S'
                            A(8,16)=A(8,16)+1;
                        case 'T'
                            A(8,17)=A(8,17)+1;
                        case 'V'
                            A(8,18)=A(8,18)+1;
                        case 'W'
                            A(8,19)=A(8,19)+1;
                        case 'Y'
                            A(8,20)=A(8,20)+1;
                    end
			    case 'K'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(9,1)=A(9,1)+1;
                        case 'C'
                            A(9,2)=A(9,2)+1;
                        case 'D'
                            A(9,3)=A(9,3)+1;
                        case 'E'
                            A(9,4)=A(9,4)+1;
                        case 'F'
                            A(9,5)=A(9,5)+1;
                        case 'G'
                            A(9,6)=A(9,6)+1;
                        case 'H'
                            A(9,7)=A(9,7)+1;
                        case 'I'
                            A(9,8)=A(9,8)+1;
                        case 'K'
                            A(9,9)=A(9,9)+1;
                        case 'L'
                            A(9,10)=A(9,10)+1;
                        case 'M'
                            A(9,11)=A(9,11)+1;
                        case 'N'
                            A(9,12)=A(9,12)+1;
                        case 'P'
                            A(9,13)=A(9,13)+1;
                        case 'Q'
                            A(9,14)=A(9,14)+1;
                        case 'R'
                            A(9,15)=A(9,15)+1;
                        case 'S'
                            A(9,16)=A(9,16)+1;
                        case 'T'
                            A(9,17)=A(9,17)+1;
                        case 'V'
                            A(9,18)=A(9,18)+1;
                        case 'W'
                            A(9,19)=A(9,19)+1;
                        case 'Y'
                            A(9,20)=A(9,20)+1;
                    end
			    case 'L' 
                   switch tline(i+kongge+1)
                        case 'A'
                            A(10,1)=A(10,1)+1;
                        case 'C'
                            A(10,2)=A(10,2)+1;
                        case 'D'
                            A(10,3)=A(10,3)+1;
                        case 'E'
                            A(10,4)=A(10,4)+1;
                        case 'F'
                            A(10,5)=A(10,5)+1;
                        case 'G'
                            A(10,6)=A(10,6)+1;
                        case 'H'
                            A(10,7)=A(10,7)+1;
                        case 'I'
                            A(10,8)=A(10,8)+1;
                        case 'K'
                            A(10,9)=A(10,9)+1;
                        case 'L'
                            A(10,10)=A(10,10)+1;
                        case 'M'
                            A(10,11)=A(10,11)+1;
                        case 'N'
                            A(10,12)=A(10,12)+1;
                        case 'P'
                            A(10,13)=A(10,13)+1;
                        case 'Q'
                            A(10,14)=A(10,14)+1;
                        case 'R'
                            A(10,15)=A(10,15)+1;
                        case 'S'
                            A(10,16)=A(10,16)+1;
                        case 'T'
                            A(10,17)=A(10,17)+1;
                        case 'V'
                            A(10,18)=A(10,18)+1;
                        case 'W'
                            A(10,19)=A(10,19)+1;
                        case 'Y'
                            A(10,20)=A(10,20)+1;
                    end
			    case 'M'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(11,1)=A(11,1)+1;
                        case 'C'
                            A(11,2)=A(11,2)+1;
                        case 'D'
                            A(11,3)=A(11,3)+1;
                        case 'E'
                            A(11,4)=A(11,4)+1;
                        case 'F'
                            A(11,5)=A(11,5)+1;
                        case 'G'
                            A(11,6)=A(11,6)+1;
                        case 'H'
                            A(11,7)=A(11,7)+1;
                        case 'I'
                            A(11,8)=A(11,8)+1;
                        case 'K'
                            A(11,9)=A(11,9)+1;
                        case 'L'
                            A(11,10)=A(11,10)+1;
                        case 'M'
                            A(11,11)=A(11,11)+1;
                        case 'N'
                            A(11,12)=A(11,12)+1;
                        case 'P'
                            A(11,13)=A(11,13)+1;
                        case 'Q'
                            A(11,14)=A(11,14)+1;
                        case 'R'
                            A(11,15)=A(11,15)+1;
                        case 'S'
                            A(11,16)=A(11,16)+1;
                        case 'T'
                            A(11,17)=A(11,17)+1;
                        case 'V'
                            A(11,18)=A(11,18)+1;
                        case 'W'
                            A(11,19)=A(11,19)+1;
                        case 'Y'
                            A(11,20)=A(11,20)+1;
                    end
			    case 'N'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(12,1)=A(12,1)+1;
                        case 'C'
                            A(12,2)=A(12,2)+1;
                        case 'D'
                            A(12,3)=A(12,3)+1;
                        case 'E'
                            A(12,4)=A(12,4)+1;
                        case 'F'
                            A(12,5)=A(12,5)+1;
                        case 'G'
                            A(12,6)=A(12,6)+1;
                        case 'H'
                            A(12,7)=A(12,7)+1;
                        case 'I'
                            A(12,8)=A(12,8)+1;
                        case 'K'
                            A(12,9)=A(12,9)+1;
                        case 'L'
                            A(12,10)=A(12,10)+1;
                        case 'M'
                            A(12,11)=A(12,11)+1;
                        case 'N'
                            A(12,12)=A(12,12)+1;
                        case 'P'
                            A(12,13)=A(12,13)+1;
                        case 'Q'
                            A(12,14)=A(12,14)+1;
                        case 'R'
                            A(12,15)=A(12,15)+1;
                        case 'S'
                            A(12,16)=A(12,16)+1;
                        case 'T'
                            A(12,17)=A(12,17)+1;
                        case 'V'
                            A(12,18)=A(12,18)+1;
                        case 'W'
                            A(12,19)=A(12,19)+1;
                        case 'Y'
                            A(12,20)=A(12,20)+1;
                    end
			    case 'P'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(13,1)=A(13,1)+1;
                        case 'C'
                            A(13,2)=A(13,2)+1;
                        case 'D'
                            A(13,3)=A(13,3)+1;
                        case 'E'
                            A(13,4)=A(13,4)+1;
                        case 'F'
                            A(13,5)=A(13,5)+1;
                        case 'G'
                            A(13,6)=A(13,6)+1;
                        case 'H'
                            A(13,7)=A(13,7)+1;
                        case 'I'
                            A(13,8)=A(13,8)+1;
                        case 'K'
                            A(13,9)=A(13,9)+1;
                        case 'L'
                            A(13,10)=A(13,10)+1;
                        case 'M'
                            A(13,11)=A(13,11)+1;
                        case 'N'
                            A(13,12)=A(13,12)+1;
                        case 'P'
                            A(13,13)=A(13,13)+1;
                        case 'Q'
                            A(13,14)=A(13,14)+1;
                        case 'R'
                            A(13,15)=A(13,15)+1;
                        case 'S'
                            A(13,16)=A(13,16)+1;
                        case 'T'
                            A(13,17)=A(13,17)+1;
                        case 'V'
                            A(13,18)=A(13,18)+1;
                        case 'W'
                            A(13,19)=A(13,19)+1;
                        case 'Y'
                            A(13,20)=A(13,20)+1;
                    end
			    case 'Q'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(14,1)=A(14,1)+1;
                        case 'C'
                            A(14,2)=A(14,2)+1;
                        case 'D'
                            A(14,3)=A(14,3)+1;
                        case 'E'
                            A(14,4)=A(14,4)+1;
                        case 'F'
                            A(14,5)=A(14,5)+1;
                        case 'G'
                            A(14,6)=A(14,6)+1;
                        case 'H'
                            A(14,7)=A(14,7)+1;
                        case 'I'
                            A(14,8)=A(14,8)+1;
                        case 'K'
                            A(14,9)=A(14,9)+1;
                        case 'L'
                            A(14,10)=A(14,10)+1;
                        case 'M'
                            A(14,11)=A(14,11)+1;
                        case 'N'
                            A(14,12)=A(14,12)+1;
                        case 'P'
                            A(14,13)=A(14,13)+1;
                        case 'Q'
                            A(14,14)=A(14,14)+1;
                        case 'R'
                            A(14,15)=A(14,15)+1;
                        case 'S'
                            A(14,16)=A(14,16)+1;
                        case 'T'
                            A(14,17)=A(14,17)+1;
                        case 'V'
                            A(14,18)=A(14,18)+1;
                        case 'W'
                            A(14,19)=A(14,19)+1;
                        case 'Y'
                            A(14,20)=A(14,20)+1;
                    end
			    case 'R'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(15,1)=A(15,1)+1;
                        case 'C'
                            A(15,2)=A(15,2)+1;
                        case 'D'
                            A(15,3)=A(15,3)+1;
                        case 'E'
                            A(15,4)=A(15,4)+1;
                        case 'F'
                            A(15,5)=A(15,5)+1;
                        case 'G'
                            A(15,6)=A(15,6)+1;
                        case 'H'
                            A(15,7)=A(15,7)+1;
                        case 'I'
                            A(15,8)=A(15,8)+1;
                        case 'K'
                            A(15,9)=A(15,9)+1;
                        case 'L'
                            A(15,10)=A(15,10)+1;
                        case 'M'
                            A(15,11)=A(15,11)+1;
                        case 'N'
                            A(15,12)=A(15,12)+1;
                        case 'P'
                            A(15,13)=A(15,13)+1;
                        case 'Q'
                            A(15,14)=A(15,14)+1;
                        case 'R'
                            A(15,15)=A(15,15)+1;
                        case 'S'
                            A(15,16)=A(15,16)+1;
                        case 'T'
                            A(15,17)=A(15,17)+1;
                        case 'V'
                            A(15,18)=A(15,18)+1;
                        case 'W'
                            A(15,19)=A(15,19)+1;
                        case 'Y'
                            A(15,20)=A(15,20)+1;
                    end
			    case 'S'
                   switch tline(i+kongge+1)
                        case 'A'
                            A(16,1)=A(16,1)+1;
                        case 'C'
                            A(16,2)=A(16,2)+1;
                        case 'D'
                            A(16,3)=A(16,3)+1;
                        case 'E'
                            A(16,4)=A(16,4)+1;
                        case 'F'
                            A(16,5)=A(16,5)+1;
                        case 'G'
                            A(16,6)=A(16,6)+1;
                        case 'H'
                            A(16,7)=A(16,7)+1;
                        case 'I'
                            A(16,8)=A(16,8)+1;
                        case 'K'
                            A(16,9)=A(16,9)+1;
                        case 'L'
                            A(16,10)=A(16,10)+1;
                        case 'M'
                            A(16,11)=A(16,11)+1;
                        case 'N'
                            A(16,12)=A(16,12)+1;
                        case 'P'
                            A(16,13)=A(16,13)+1;
                        case 'Q'
                            A(16,14)=A(16,14)+1;
                        case 'R'
                            A(16,15)=A(16,15)+1;
                        case 'S'
                            A(16,16)=A(16,16)+1;
                        case 'T'
                            A(16,17)=A(16,17)+1;
                        case 'V'
                            A(16,18)=A(16,18)+1;
                        case 'W'
                            A(16,19)=A(16,19)+1;
                        case 'Y'
                            A(16,20)=A(16,20)+1;
                    end
			    case 'T'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(17,1)=A(17,1)+1;
                        case 'C'
                            A(17,2)=A(17,2)+1;
                        case 'D'
                            A(17,3)=A(17,3)+1;
                        case 'E'
                            A(17,4)=A(17,4)+1;
                        case 'F'
                            A(17,5)=A(17,5)+1;
                        case 'G'
                            A(17,6)=A(17,6)+1;
                        case 'H'
                            A(17,7)=A(17,7)+1;
                        case 'I'
                            A(17,8)=A(17,8)+1;
                        case 'K'
                            A(17,9)=A(17,9)+1;
                        case 'L'
                            A(17,10)=A(17,10)+1;
                        case 'M'
                            A(17,11)=A(17,11)+1;
                        case 'N'
                            A(17,12)=A(17,12)+1;
                        case 'P'
                            A(17,13)=A(17,13)+1;
                        case 'Q'
                            A(17,14)=A(17,14)+1;
                        case 'R'
                            A(17,15)=A(17,15)+1;
                        case 'S'
                            A(17,16)=A(17,16)+1;
                        case 'T'
                            A(17,17)=A(17,17)+1;
                        case 'V'
                            A(17,18)=A(17,18)+1;
                        case 'W'
                            A(17,19)=A(17,19)+1;
                        case 'Y'
                            A(17,20)=A(17,20)+1;
                    end
			    case 'V'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(18,1)=A(18,1)+1;
                        case 'C'
                            A(18,2)=A(18,2)+1;
                        case 'D'
                            A(18,3)=A(18,3)+1;
                        case 'E'
                            A(18,4)=A(18,4)+1;
                        case 'F'
                            A(18,5)=A(18,5)+1;
                        case 'G'
                            A(18,6)=A(18,6)+1;
                        case 'H'
                            A(18,7)=A(18,7)+1;
                        case 'I'
                            A(18,8)=A(18,8)+1;
                        case 'K'
                            A(18,9)=A(18,9)+1;
                        case 'L'
                            A(18,10)=A(18,10)+1;
                        case 'M'
                            A(18,11)=A(18,11)+1;
                        case 'N'
                            A(18,12)=A(18,12)+1;
                        case 'P'
                            A(18,13)=A(18,13)+1;
                        case 'Q'
                            A(18,14)=A(18,14)+1;
                        case 'R'
                            A(18,15)=A(18,15)+1;
                        case 'S'
                            A(18,16)=A(18,16)+1;
                        case 'T'
                            A(18,17)=A(18,17)+1;
                        case 'V'
                            A(18,18)=A(18,18)+1;
                        case 'W'
                            A(18,19)=A(18,19)+1;
                        case 'Y'
                            A(18,20)=A(18,20)+1;
                    end
			    case 'W'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(19,1)=A(19,1)+1;
                        case 'C'
                            A(19,2)=A(19,2)+1;
                        case 'D'
                            A(19,3)=A(19,3)+1;
                        case 'E'
                            A(19,4)=A(19,4)+1;
                        case 'F'
                            A(19,5)=A(19,5)+1;
                        case 'G'
                            A(19,6)=A(19,6)+1;
                        case 'H'
                            A(19,7)=A(19,7)+1;
                        case 'I'
                            A(19,8)=A(19,8)+1;
                        case 'K'
                            A(19,9)=A(19,9)+1;
                        case 'L'
                            A(19,10)=A(19,10)+1;
                        case 'M'
                            A(19,11)=A(19,11)+1;
                        case 'N'
                            A(19,12)=A(19,12)+1;
                        case 'P'
                            A(19,13)=A(19,13)+1;
                        case 'Q'
                            A(19,14)=A(19,14)+1;
                        case 'R'
                            A(19,15)=A(19,15)+1;
                        case 'S'
                            A(19,16)=A(19,16)+1;
                        case 'T'
                            A(19,17)=A(19,17)+1;
                        case 'V'
                            A(19,18)=A(19,18)+1;
                        case 'W'
                            A(19,19)=A(19,19)+1;
                        case 'Y'
                            A(19,20)=A(19,20)+1;
                    end
                case 'Y'
                    switch tline(i+kongge+1)
                        case 'A'
                            A(20,1)=A(20,1)+1;
                        case 'C'
                            A(20,2)=A(20,2)+1;
                        case 'D'
                            A(20,3)=A(20,3)+1;
                        case 'E'
                            A(20,4)=A(20,4)+1;
                        case 'F'
                            A(20,5)=A(20,5)+1;
                        case 'G'
                            A(20,6)=A(20,6)+1;
                        case 'H'
                            A(20,7)=A(20,7)+1;
                        case 'I'
                            A(20,8)=A(20,8)+1;
                        case 'K'
                            A(20,9)=A(20,9)+1;
                        case 'L'
                            A(20,10)=A(20,10)+1;
                        case 'M'
                            A(20,11)=A(20,11)+1;
                        case 'N'
                            A(20,12)=A(20,12)+1;
                        case 'P'
                            A(20,13)=A(20,13)+1;
                        case 'Q'
                            A(20,14)=A(20,14)+1;
                        case 'R'
                            A(20,15)=A(20,15)+1;
                        case 'S'
                            A(20,16)=A(20,16)+1;
                        case 'T'
                            A(20,17)=A(20,17)+1;
                        case 'V'
                            A(20,18)=A(20,18)+1;
                        case 'W'
                            A(20,19)=A(20,19)+1;
                        case 'Y'
                            A(20,20)=A(20,20)+1;
                    end
            end
        end
        fa{flag}=A;
        flag=flag+1;
              
    end            
   continue	
end

