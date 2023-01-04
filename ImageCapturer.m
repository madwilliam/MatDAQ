classdef ImageCapturer < handle
   
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
        function self = ImageCapturer(seconds_per_frame,nframes,sizex,sizey)
            self.input = videoinput('ni');
            triggerconfig(self.input, 'Manual');
            self.input.FramesPerTrigger = 1;
            start(self.input);
            self.image_per_second = 20;
            self.seconds_per_frame = seconds_per_frame;
            self.image_per_frame = self.image_per_second/self.seconds_per_frame;
            self.nframes = nframes;
            self.sizex = sizex;
            self.sizey = sizey;
            self.this_trial = zeros(self.nframes,self.sizex,self.sizey);
            self.previous_trial = zeros(self.nframes,self.sizex,self.sizey);
        end
        
        function get_image(self)
            if self.debug
                self.current_image = rand(512,512);
            end
        end
        
        function framei = get_frame(self)
            framei = zeros(self.sizex,self.sizey);
            elapsed_time = 0;
            while elapsed_time < self.seconds_per_frame
                self.get_image()
                framei = framei+self.current_image;
            end
        end
        
       function start(self)
           for i = 1:self.nframes
                framei = self.get_frame();
                self.this_trial(i,:,:) = framei;
           end
        end
        
    end
end