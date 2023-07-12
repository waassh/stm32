clear;
s=serialport("COM8",115200,"Timeout",5);
s.InputBufferSize=5000;
s.OutputBufferSize=1000;

InputBufferSize = 100;
t = 1:InputBufferSize;
InputBuffer = zeros(1,InputBufferSize);
i=1;
plot1=plot(InputBuffer);
axis([t(1) t(InputBufferSize) 0 5000]);

while (i<=InputBufferSize-20)
    data = readline(s);
    InputBuffer1(i)=data;
    set(plot1,'YData',InputBuffer1);
    axis([t(1) t(InputBufferSize) 0 5000]);
    i=i+1;
end

while 1
    data = readline(s);
    InputBuffer1(i)=data;
    set(plot1,'YData',InputBuffer1);
    axis([t(1) t(InputBufferSize) 0 5000]);
    t=t+1;i=i+1;
end



