function [A,F] = fourier(img)
    f = fft2(img);

    shifted = fftshift(f);
    A = log10(abs(shifted)+1);
    F = angle(shifted.*(A>0.0001));
end