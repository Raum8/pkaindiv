function [c] = extractLetter(bits)
sLetter = num2str(bits);
sLetter(isspace(sLetter)) = '';
c = char(bin2dec(sLetter));
end

