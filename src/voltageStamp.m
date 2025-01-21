% function to stamp voltage source in the matrix
function [lhs, rhs]=voltageStamp(attributes, lhs, rhs)

    % N1 is positive node
    % N2 is negative node
    N1=attributes(1); N2=attributes(2); value=attributes(3);

    % n is the current length of matrixes
    n=size(rhs);
    n=n(1);

    % stamping in lhs
    if N1~=0
    lhs(n+1,N1)=1; lhs(N1,n+1)=1;
    end
    if N2~=0
    lhs(n+1,N2)=-1; lhs(N2,n+1)=-1;
    end

    % stamping in rhs
    rhs(n+1,1)=value;
    
end