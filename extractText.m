function [text] = extractText(image)
redData = image(:,:,1);
nCounter = 3;
nCounterBits = nCounter*7;
binaryData = zeros(1,nCounterBits);
for i = 1:nCounterBits
    binaryData(i) = bitget(redData(i),1);
end
counter = '';
for i = 1:nCounter
    index = 1+(i-1)*7;
    counter = strcat(counter, extractLetter(binaryData(index:index+6)));
end
numLetters = str2num(counter);
nLetterBits = numLetters*7;
binaryData = zeros(1, nLetterBits);
for i = 1:nLetterBits
    binaryData(i) = bitget(redData(nCounterBits + i), 1);
end
text = '';
for i = 1:numLetters
    index = 1+(i-1)*7;
    counter = strcat(text, extractLetter(binaryData(index:index+6)));
    text = counter;
end
end

