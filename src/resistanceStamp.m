function [lhs, rhs]=resistanceStamp(attributes, lhs, rhs)
    N1=attributes(1); N2=attributes(2); value=attributes(3);
    if N1~=0
        lhs(N1,N1)=lhs(N1,N1)+1/value;
    end
    if N2~=0 
        lhs(N2,N2)=lhs(N2,N2)+1/value;
    end

    if N1~=0 && N2~=0
        lhs(N1,N2)=lhs(N1,N2)-1/value;
        lhs(N2,N1)=lhs(N2,N1)-1/value;
end