function [filtered_x] = bessel_lowpass_filter(x,sampling_frequency,low_cutoff,order)
    [b,a] = besself(order,low_cutoff/(sampling_frequency/2),'low');
    filtered_x = filtfilt(b,a,x);
end