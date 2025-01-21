function [lhs, rhs]=VCVSstamp(attributes, lhs, rhs)
    N1=attributes(1);
    N2=attributes(2);
    NC1=attributes(3);
    NC2=attributes(4);
    val=attributes(5);
    
    %
    %n=length(rhs)+1;
    n=length(rhs);
    lhs(n+1,n+1)=0;
    rhs(n+1,1)=0;

    % stamping values in the matrix
    if N1~=0
        lhs(N1,n+1)=lhs(N1,n+1)+1;
        lhs(n+1,N1)=lhs(n+1,N1)+1;
    end
    if N2~=0
        lhs(N2,n+1)=lhs(N2,n+1)-1;
        lhs(n+1,N2)=lhs(n+1,N2)-1;
    end
    
    if NC1~=0
        lhs(n+1,NC1)=lhs(n+1,NC1)-val;
    end
    if NC2~=0
        lhs(n+1,NC2)=lhs(n+1,NC2)+val;
    end
end