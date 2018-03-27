function [io] = enablePort(equipment,port,use_tcpip)
%enablePort enables parallel port to communicate with BrainVision Recorder
% LPT1_port - is the a string containing the number of the parallel port
%               i.e. '378'
% Example:
%           [io] = enablePort('acticap','378')
%           [io] = enablePort('cognionics','COM18')
if nargin < 3
    use_tcpip = false;
end
io.obj = []
io.address = []
if strcmp(equipment,'acticap')
    io.obj = io64;   % create an instance of the io64 object
    status = io64(io.obj); % initialize the hwinterface.sys kernel-level driver

    if status ~= 0
        error('Unable to initialize the I/O hardware interface!');
    else
        io.address = hex2dec(port); %standard LPT1 output port address(0x378)
        disp('Successful connected to LPT1_port');
    end
elseif strcmp(equipment,'cognionics')
     if use_tcpip
        io.obj = tcpip('localhost',port);
        fopen(io.obj);
    else
        io.obj = serial(port, 'BaudRate', 57600); % on the daq2 computer, it's COM18
        fopen(io.obj);
     end
end


end

