function ST= solve_it(lhs, rhs, branch, n)
    res=lhs\rhs;
    fprintf('\n');
    ST={};
    for i=1:length(res)
        if i>n
            st= "I(" + branch(i) + "+:" + branch(i) + "-)=   " + num2str(res(i)) + " A";
        else
            st = "V(" + branch(i) + ")=   " + num2str(res(i)) + " V";
        end
        ST{i,1}=char(st);
    end
    
end