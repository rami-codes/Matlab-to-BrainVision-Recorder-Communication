function [ioObj,address] = enablePort(LPT1_port)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


ioObj = io64;    %create an instance of the io64 object
status = io64(ioObj);   %initialize the hwinterface.sys kernel-level I/O driver

if status ~= 0
    error('Unable to initialize the I/O hardware interface!');
else
    address = hex2dec(LPT1_port);           %standard LPT1 output port address  (0x378)
end



end

