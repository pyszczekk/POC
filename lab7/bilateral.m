function data_filtered = bilateral(data,local_window)
    FUNCTION = @(data_, local_window_)billateral_local(data_, local_window_);
    data_filtered = colfilt(data, local_window, 'sliding', FUNCTION, local_window);
end
