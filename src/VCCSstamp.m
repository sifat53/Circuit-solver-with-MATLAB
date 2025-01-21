function [lhs, rhs,usedNodes]=VCCSstamp(attributes, lhs, rhs,usedNodes)
    N1=attributes(1);
    N2=attributes(2);
    NC1=attributes(3);
    NC2=attributes(4);
    val=attributes(5);

    %stamping values in matrix

    %stamping in lhs
    if N1~=0 && NC1~=0
        lhs(N1,NC1)=lhs(N1,NC1)+val;
    end
    if N1~=0 && NC2~=0
        lhs(N1,NC2)=lhs(N1,NC2)-val;
    end
    if N2~=0 && NC1~=0
        lhs(N2,NC1)=lhs(N2,NC1)-val;
    end
    if N2~=0 && NC2~=0
        lhs(N2,NC2)=lhs(N2,NC2)+val;
    end
    
    
    
    


end