T = table();
for i = 0:16
    T(i + 1,:) = {10^i, I(10^i, 0.5)};
end
format longE
disp("e^0.5: ")
disp(exp(0.5))
disp(T);
    
function ret = I(n, x)
    if(n > 10^8)
        ret = exp(x);
    else
        ret = (1 + x/n)^n;
    end
end