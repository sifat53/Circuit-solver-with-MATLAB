function [pltx, plty]=dcSweep(lhs, rhs, vname, n1, n2, range1, range2, branch)

    vname=upper(string(vname)); % name of the source to sweep

    for i=1:length(branch)      %seek which branch current corresponds to the source
        if vname==branch(i)
            br=i;
            break;
        end
    end

    pltx=linspace(range1, range2, 1000);    % x axis variable
    plty=pltx;  %dummy y axis variable

    for i=1:1000
        Trhs=rhs;
        Trhs(br)=pltx(i);
        res=lhs\Trhs;
        v=0;
        if n1
            v= v+res(n1);
        end

        if n2
            v=v-res(n2);
        end
        plty(i)=v;
    end

    
end