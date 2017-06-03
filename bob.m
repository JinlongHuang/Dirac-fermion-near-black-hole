% The Von Neumann entropy of the second qubit observed by Bob
% 
% Author: Jinlong Huang.

tMin = 0.1;
tMax = 150;
figure;

w = 1;
fplot(@(t) -1./(2.*(exp(-w./t)+1)).*log(1./(2.*(exp(-w./t)+1))) ...
            -(1-1./(2.*(exp(-w./t)+1))).*log(1-1./(2.*(exp(-w./t)+1))) ...
            , [tMin,tMax],'Linewidth',1.6)
        
hold on
w = 5;
fplot(@(t) -1./(2.*(exp(-w./t)+1)).*log(1./(2.*(exp(-w./t)+1))) ...
            -(1-1./(2.*(exp(-w./t)+1))).*log(1-1./(2.*(exp(-w./t)+1))) ...
            , [tMin,tMax],'Linewidth',1.6)
  
        
w = 10;
fplot(@(t) -1./(2.*(exp(-w./t)+1)).*log(1./(2.*(exp(-w./t)+1))) ...
            -(1-1./(2.*(exp(-w./t)+1))).*log(1-1./(2.*(exp(-w./t)+1))) ...
            , [tMin,tMax],'Linewidth',1.6)
        
w = 20;
fplot(@(t) -1./(2.*(exp(-w./t)+1)).*log(1./(2.*(exp(-w./t)+1))) ...
            -(1-1./(2.*(exp(-w./t)+1))).*log(1-1./(2.*(exp(-w./t)+1))) ...
            , [tMin,tMax],'Linewidth',1.6)
hold off

axis([tMin tMax 0.56 0.70]);
ax = gca;
ax.FontSize = 10;
title('Entropy for Bobs''s qubit if initially shared a Bell''s state');
xlabel('Temperature/K','FontSize',12);
ylabel('Entropy','FontSize',12)
legend({'w=1','w=5','w=10','w=20'},'FontSize',12);
