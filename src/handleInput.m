% from singleline input extracts attributes of an element
function [elementName, attributes, nodesofVDC, branch]=handleInput(nodesofVDC, branch, st)

    st=split(st);
    elementName=upper(char(st(1)));
    attributes=[];

    %for independent Voltage source
 
        if elementName(1)=='V' 
            l=length(branch);
            branch(l+1)=string(elementName);        % (l+1)th variable is the current though Voltage source
            nodesofVDC(l+1,1)=str2num(char(st(2)));
            nodesofVDC(l+1,2)=str2num(char(st(3)));
            nodesofVDC(l+1,3)=str2num(char(st(4)));
            attributes=[attributes str2num(char(st(2:length(st))))];
        end
    
    
    %For dependent voltage sources (CCVS and VCVS)
    if  elementName(1)=='E' || elementName(1)=='H'
        l=length(branch);
        branch(l+1)=string(elementName);        % (l+1)th variable is the current though Voltage source
    end


    %for CCCS and CCVS
    if elementName(1)=='F' || elementName(1)=='H'
        val=str2num(char(st(5)));
        N1=str2num(char(st(2)));
        N2=str2num(char(st(3)));
        attributes=[attributes N1 N2];

        branchName = string(upper(char(st(4))));
        for i=1:length(branch)
            
            if branchName==branch(i)
                break;
            end
        end
        attributes=[attributes nodesofVDC(i,1) nodesofVDC(i,2) nodesofVDC(i,3) i val ];
        

    end
    
    % for current source, resistor, VCVS and VCCS
    if elementName(1)=='I' || elementName(1)=='R' || elementName(1)=='G' ||elementName(1)=='E'
        attributes=[attributes str2num(char(st(2:length(st))))];
    end
   

end