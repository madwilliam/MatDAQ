vid = videoinput('ni');
info = imaqhwinfo('ni');
vid = videoinput('ni', 1,'img0');
data = getdata(vid);
imaqhwinfo(vid)
triggerconfig(vid, 'Manual')
vid.FramesPerTrigger = 1;
start(vid)
trigger(vid)
isrunning(vid)
delete(vid)
FramesAcquired = FramesPerTrigger * (TriggerRepeat + 1)

%%
vid = videoinput('ni');
triggerconfig(vid, 'Manual');
vid.FramesPerTrigger = 1;
start(vid);
trigger(vid);
%%
d = daqlist;
deviceInfo = d{1, "DeviceInfo"}

%%
dq = daq("ni");
dq.Rate = 8000;
addoutput(dq, "Dev1", "ao0", "Voltage");
addoutput(dq, "Dev1", "ao1", "Voltage");
write(dq, outputSignal)

%%
d{1,'DeviceInfo'}








