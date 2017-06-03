% The entropy of the first qubit observed by Alice
% 
% Author: Jinlong Huang
        
figure;
h = fplot(@(a) -a.^2.*log(a.^2)-(1-a.^2).*log(1-a.^2),[0,1])

