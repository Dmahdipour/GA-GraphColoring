function [z1,z2,z3,z4,z5,z6,z7,z8,z9] = inputsFunc()
 
    myGraph= [0 1 1 1 0 0 0 0 0 0 0 0 0;
              0 0 0 0 1 1 1 0 0 0 0 0 0;
              0 0 0 0 0 0 0 1 1 1 0 0 0;
              0 0 0 0 0 0 0 0 0 0 1 1 1;
              0 0 0 0 0 0 0 0 0 0 0 0 0;
              0 0 0 0 0 0 0 0 0 0 0 0 0;
              0 0 0 0 0 0 0 0 0 0 0 0 0;
              0 0 0 0 0 0 0 0 0 0 0 0 0;
              0 0 0 0 0 0 0 0 0 0 0 0 0;
              0 0 0 0 0 0 0 0 0 0 0 0 0;
              0 0 0 0 0 0 0 0 0 0 0 0 0;
              0 0 0 0 0 0 0 0 0 0 0 0 0;
              0 0 0 0 0 0 0 0 0 0 0 0 0;];
         
    L=length(myGraph);
    colorN=2;
    
% % % Define a Circular Graph
%     L=29;
%     myGraph=zeros(L);
%     for idx=1:L-1
%         myGraph(idx,idx+1)=1;
%     end
%     myGraph(1,L)=1;
%     colorN=3;


% % % Define a Full Graph
%     L=30;
%     myGraph=zeros(L);
%     for idx=1:L-1
%         for jdx=idx+1:L
%             myGraph(idx,jdx)=1;
%         end
%     end
%     colorN=L;


% % % Define a Custom Tree
%     myGraph=[0 1 1 0 0 0 0 0 0 0 0 0 0 0 0;
%              0 0 0 1 1 0 0 0 0 0 0 0 0 0 0;
%              0 0 0 0 0 1 1 0 0 0 0 0 0 0 0;
%              0 0 0 0 0 0 0 1 1 0 0 0 0 0 0;
%              0 0 0 0 0 0 0 0 0 1 1 0 0 0 0;
%              0 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
%              0 0 0 0 0 0 0 0 0 0 0 0 0 1 1;
%              0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
%              0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
%              0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
%              0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
%              0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
%              0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
%              0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
%              0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;];
 
    
% % % Define a Custom Graph
%     myGraph=[0 1 0 1 0 1 0 1 1 0;
%              0 0 1 0 1 1 0 1 0 1;
%              0 0 0 1 0 1 0 1 0 1;
%              0 0 0 0 1 0 1 0 1 0;
%              0 0 0 0 0 1 0 1 1 1;
%              0 0 0 0 0 0 1 0 1 1;
%              0 0 0 0 0 0 0 1 1 1;
%              0 0 0 0 0 0 0 0 1 0;
%              0 0 0 0 0 0 0 0 0 1;
%              0 0 0 0 0 0 0 0 0 0;];
%     L=length(myGraph);
%     colorN=4;

% % % Public Parameters
    Gmax=100;
    Pc=0.8;
    Pm=0.2;
    ElitismOF=L*(L-1)/2+1;
    ElitismData=zeros(1,L);
    
    % Population_Generation Number
    popNum=ceil(1.65*2^(0.21*L));
    if(mod(popNum,2)~=0)
        popNum=popNum+1;
    end
    
z1=L;
z2=myGraph;
z3=colorN;
z4=Gmax;
z5=Pc;
z6=Pm;
z7=ElitismOF;
z8=ElitismData;
z9=popNum;