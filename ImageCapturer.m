classdef ImageCapturer < handle
   
    properties
        input
    end

    methods
        function self = ImageCapturer(self)
            self.input = videoinput('ni');
            triggerconfig(self.input, 'Manual');
            self.input.FramesPerTrigger = 1;
            start(self.input);
        end
        
    end
end