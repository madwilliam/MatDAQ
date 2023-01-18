classdef IODebug < handle
   
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
        function self = IODebug()
            ...
        end
        
        function image = get_image(self,frames_per_bin)
            function get_image_function(frames_per_bin)
            image = rand([512,512]);
            end
            f = parfeval(backgroundPool,@get_image_function,frames_per_bin);

        end
        
    end
end