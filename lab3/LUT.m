function LUT(obraz,przekodowanie)
subplot(2,2,1);
imshow(obraz);
title('obraz oryginalny');
subplot(2,2,2);
l=intlut(obraz,przekodowanie);
imshow(l);
title('obraz przekodowany');
subplot(2,2,3:4);
plot(przekodowanie);
title('funkcja LUT');
xlim([0 250])
ylim([0 280])



end

