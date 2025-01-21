% inserts current source attributes in matrix
function [lhs, rhs]=currentStamp(attributes, lhs, rhs)

    N1=attributes(1);   % positive node
    N2=attributes(2);   % negative node
    value=attributes(3);    %value of source

    if N1~=0
        rhs(N1,1)=rhs(N1,1)-value;
    end
    if N2~=0
        rhs(N2,1)=rhs(N2,1)+value;
    end
end
