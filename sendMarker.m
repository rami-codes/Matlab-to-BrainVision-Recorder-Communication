function sendMarker(ioObj,address,marker,EPSILON)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    io64(ioObj,address,uint32(marker));   %output command
    pause(EPSILON); %must pause a minimum of 1 time sample
    disp(sprintf('Sent marker %s',char(marker)));
    data_in = io64(ioObj,address);
    disp([num2str(data_in) ' Read from Parallel port']);
    io64(ioObj,address, 0);
    pause(EPSILON);
end

