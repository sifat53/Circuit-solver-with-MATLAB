function [lhs, rhs]=callStampers(elementName, attributes,lhs, rhs)
 
    % Determining the element type and call the respective stamping function
    if elementName(1)=="V"
        [lhs, rhs]=voltageStamp(attributes,lhs,rhs);
    elseif elementName(1)=="R"
        [lhs, rhs]=resistanceStamp(attributes,lhs,rhs);
    elseif elementName(1)=="I"
        [lhs, rhs]=currentStamp(attributes,lhs,rhs);
    elseif elementName(1)=="G"
        [lhs, rhs]=VCCSstamp(attributes,lhs,rhs);
    elseif elementName(1)=="E"
        [lhs, rhs]=VCVSstamp(attributes,lhs,rhs);
    elseif elementName(1)=="F"
        [lhs, rhs]=CCCSstamp(attributes,lhs,rhs);
    elseif elementName(1)=="H"
        [lhs, rhs]=CCVSstamp(attributes,lhs,rhs);
    end


end
