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