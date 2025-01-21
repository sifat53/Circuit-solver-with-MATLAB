function [vth, rth]=thievenin(lhs, rhs, n1, n2)
    r1=1;
    attributes=[n1 n2 r1];
    [Tlhs, Trhs]=resistanceStamp(attributes, lhs, rhs);
    Tres=Tlhs\Trhs;
    v1=0;
    if n1
        v1= v1+Tres(n1);
    end

    if n2
        v1=v1-Tres(n2);
    end

    r2=2;
    attributes=[n1 n2 r2];
    [Tlhs, Trhs]=resistanceStamp(attributes, lhs, rhs);
    Tres=Tlhs\Trhs;
    v2=0;
    if n1
        v2= v2+Tres(n1);
    end

    if n2
        v2=v2-Tres(n2);
    end

    res=[r1 -v1;r2 -v2]\[v1*r1; v2*r2];
    vth=res(1);
    rth=res(2);




end