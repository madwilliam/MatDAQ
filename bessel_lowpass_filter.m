function [filtered_x] = bessel_lowpass_filter(x,sampling_frequency,low_cutoff,order)
    [b,a] = besself(order,low_cutoff,'low');
end