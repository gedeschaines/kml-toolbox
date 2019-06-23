function fimg = scaledimg(img)
% SCALEDIMG(IMG)
% Converts values of given image elements to fixed numbers
% in the range [0,255].

imin = min(min(img(:,:)));
imax = max(max(img(:,:)));
frac = 255/double(imax - imin);
fimg = fix((img - imin).*frac);
end
