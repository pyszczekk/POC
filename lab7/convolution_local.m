function data_filtered = convolution_local(data,local_window)
    Nx = size(data, 2);
    H = fspecial('gaussian', local_window, 25);
    
    for i = 1:Nx
        patch = reshape(data(:, i), local_window);
        Wn=sum(sum(H));
        data_filtered(i) =1/Wn * sum(sum(patch .*H));
    end
end

