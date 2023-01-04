classdef WhiskerExperiment < handle
   
    properties
        capturer
    end

    methods
        function self = WhiskerExperiment()
            self.capturer = ImageCapturer(seconds_per_frame,nframes,sizex,sizey);
        end
        

    

    end
end