overlap=1/3;       %bin overlap
M = 32;            %FFT size
D = M/(1+overlap); %Decimation factor


M=32;
D=24;

[num, dem] = rat(M/D); %simplify fraction
shiftstates=0:num-1; %array to store shift states
j=1; %index

%compute shift states
for n = 0:num-1
    answer=mod(n*D,M);
    shiftstates(j)=answer;
    j=j+1;
end 
