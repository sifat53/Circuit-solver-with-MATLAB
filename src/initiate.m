% function to n=initiate all the values
function [lhs, rhs, nodesofVDC, branch]=initiate(n)
    % initiate left hand side matrix
    % also called co-efficient matrix
    lhs=zeros(n,n); 

    % initiates right hand side vector
    rhs=zeros(n,1);

    % matrix to keep track of voltage sources
    nodesofVDC=zeros(n,3);

    % vector to keep track of variable names
    branch=["1"];

    % variable name assigning loop
    for i=1:n
        branch(i)=num2str(i);
    end
    clc;
end