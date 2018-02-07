function [ioObj,address] = enablePort(LPT1_port)
%enablePort enables parallel port to communicate with BrainVision Recorder
% LPT1_port - is the a string containing the number of the parallel port
%               i.e. '378'
% Example:
%           [ioObj,address] = enablePort('378')
%

ioObj = io64;   % create an instance of the io64 object
status = io64(ioObj); % initialize the hwinterface.sys kernel-level driver

if status ~= 0
    error('Unable to initialize the I/O hardware interface!');
else
    address = hex2dec(LPT1_port); %standard LPT1 output port address(0x378)
    disp('Successful connected to LPT1_port');
end



end

