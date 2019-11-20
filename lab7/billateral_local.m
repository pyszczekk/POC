function data_filtered = billateral_local(data, local_window,sigma)
    Nx = size(data, 2);
    Ncy = ceil(local_window(1)/2);
    Ncx = ceil(local_window(2)/2);
    sigma_r = sigma;
    
    for i=1:Nx
        H = fspecial('gaussian', local_window, 25);
        patch = reshape(data(:, i), local_window);
        [rows, cols] = find(patch == patch);
        rows = reshape(rows, local_window);
        cols = reshape(cols, local_window);
        
        dist = sqrt((Ncy - rows).^2 + (Ncx - cols).^2);
        dist = dist .* H;
        abs_val = abs(patch - patch(Ncx, Ncy));
        
        gamma = exp(((-1)*(abs_val).^2)/2*(sigma_r)^2);
        Wn =  sum(sum(dist .* gamma));
        data_filtered(i) =(1/Wn)* sum(sum(dist .* gamma .* patch)) ;
    end
end

