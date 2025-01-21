function [lhs, rhs]=CCCSstamp(attributes, lhs, rhs)

    %naming the values of the element.

    N1=attributes(1);   % the positve node of CCCS
    N2=attributes(2);   % the negative node of CCCS
    NC1=attributes(3);  % posive node of controllinh current
    NC2=attributes(4);  % negative node of controlling current
    VC=attributes(5);   % value of controlling voltage
    ic=attributes(6);   % branch current number of controlling source
    val=attributes(7);  %value of controlled voltage

    % stamping values in the matrix
    
    %stamping in lhs
    if N1~=0
        lhs(N1,ic)=val;
    end
    if N2~=0
        lhs(N2,ic)=-val;  
    end

    if NC1~=0
        lhs(NC1,ic)=+1;
        lhs(ic,NC1)=+1;
    end
    if NC2~=0
        lhs(NC2,ic)=-1;
        lhs(ic,NC2)=-1;
    end


    %stamping in rhs
    rhs(ic,1)=VC;
    
end