vid = videoinput('ni');
info = imaqhwinfo('ni');
vid = videoinput('ni', 1,'img0');
data = getdata(vid);
imaqhwinfo(vid)
triggerconfig(vid, 'Manual')
vid.FramesPerTrigger = 20;
start(vid)
trigger(vid)
isrunning(vid)
delete(vid)
FramesAcquired = FramesPerTrigger * (TriggerRepeat + 1);
%%
preview(vid)
stoppreview(vid)
%%
capturer =  ImageCapturer();
image = capturer.get_image(20);
imagesc(image)
%%
start(vid)
trigger(vid)
frame = getdata(vid);
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
dq.Rate = 2000;
addoutput(dq, "Dev1", "ao1", "Voltage");
%%
outputSignal =  sin(linspace(0,10*pi,2000)')+5;
write(dq, outputSignal)

%%
d{1,'DeviceInfo'}








