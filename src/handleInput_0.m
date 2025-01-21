% takes single line input from multiline input
% calls the function to call stampers
    
function [lhs, rhs, nodesofVDC, branch] = handleInput_0(nodesofVDC, branch,lhs,rhs, val)    
    n=length(val);
    for i=1:n
        st=char(val(i));
        [elementName, attributes, nodesofVDC, branch]=handleInput(nodesofVDC, branch, st);
        [lhs, rhs]=callStampers(elementName, attributes, lhs, rhs);
    end
end