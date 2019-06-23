function b = bitslice(a,lowbit,highbit)
%BITSLICE(A,LOWBIT,HIGHBIT)
% Extracts bits [lowbit:highbit] from array 'a' elements
% of type double, and returns as 8-bit unsigned integers
% (assumes least significant bit is the 0th bit).

numbits = highbit - lowbit + 1;                % slice size
m = uint8(bitshift(uint8(127),-(7-numbits)));  % mask byte
k = int8(max(0, lowbit));                      % bits to shift
b = uint8(bitshift(a,-k));                     % right shift
b = bitand(b,m,'uint8');                       % apply mask
end
