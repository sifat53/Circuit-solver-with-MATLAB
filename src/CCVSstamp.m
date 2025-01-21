function [lhs, rhs]=CCVSstamp(attributes, lhs, rhs)

    %naming the values of the element.
    N1=attributes(1);   % the positve node of CCCS
    N2=attributes(2);   % the negative node of CCCS
    NC1=attributes(3);  % posive node of controllinh current
    NC2=attributes(4);  % negative node of controlling current
    VC=attributes(5);
    ic=attributes(6);
    val=attributes(7);
    
    % ik is the current in CCVS branch. new varible.
    ik=length(rhs)+1;
    lhs(ik,ik)=0;
    rhs(ik,1)=0;

     % stamping values in the matrix

     %stamping in lhs
     if N1~=0
        lhs(N1,ik)=+1;
        lhs(ik,N1)=+1;
     end

     if N2~=0
        lhs(N2,ik)=-1;
        lhs(ik,N2)=-1;
     end

     if NC1~=0
        lhs(NC1,ic)=+1;
        lhs(ic,NC1)=+1;
     end

     if NC2~=0
        lhs(NC2,ic)=-1;
        lhs(ic,NC2)=-1;
     end

     lhs(ik,ic)=-val;
     
     

     %stamping in rhs
     rhs(ic,1)=VC;

end