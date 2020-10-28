
T = table();
for i = 0:16
    T(i + 1,:) = {10^i, I(10^i, 0.5)};
end
format longE
disp("e^0.5: " + exp(0.5))
disp(T);
    
function ret = I(n, x)
    ret = (1 + x/n)^n;
end