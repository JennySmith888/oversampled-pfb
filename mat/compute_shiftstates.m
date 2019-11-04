% COMPUTE SHIFT STATES
%
%    Computes shift states for oversampled polyphase filterbank
%    Results to be placed in Vivado HLS C/C++ code
%
%    Jenny Smith
%    August 7, 2019


% SYSTEM SPECS
overlap=1/3;       %bin overlap
M = 16; 32;            %FFT size
D = 14; M/(1+overlap); %Decimation factor

% M and D must be integers
if floor(M) ~= M || floor(D) ~= D
   error('Error: M and D must be integers.')
end

[num, dem] = rat(M/D); %simplify fraction
shiftstates=0:num-1;   %array to store shift states
j=1;
for n = 0:num-1
    shift=mod(n*D,M);
    shiftstates(j)=shift;
    j=j+1;
end 

%print result
shiftstates