function [output] = addText(input, text)
red_data = input(:,:,1);
text = strcat(num2str(length(text), '%03.f'), text);
binary_data = dec2bin(text)';
data_to_encode = str2num(binary_data(:));
for i = 1:length(data_to_encode)
   red_data(i) = bitset(red_data(i), 1, data_to_encode(i)); 
end
output = input;
output(:,:,1) = red_data;
end

