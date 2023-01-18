classdef DataIO < handle
   
    properties
        input
        seconds_per_frame
        image_per_second
        image_per_frame
        debug = true;
        nframes
        this_trial
        previous_trial
        sizex
        sizey
        current_image
    end

    methods
        function self = DataIO()
            self.input = videoinput('ni');
            triggerconfig(self.input, 'Manual');
        end
        
        function image = get_image(self,frames_per_bin)
            self.input.FramesPerTrigger = frames_per_bin;
            start(self.input)
            trigger(self.input)
            image = getdata(self.input);
            image = mean(squeeze(image),3);
        end
        
    end
end