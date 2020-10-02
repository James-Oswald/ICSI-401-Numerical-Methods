
%Testing corectness of part 1 against an online result I found from
%https://www.whitman.edu/mathematics/calculus_online/section06.03.html
F1 = @(x) x^2-3;
F1p = @(x) 2*x;
disp(newtonsMethod(F1, F1p, 2, 2));

%2.4 Part 1
function wk = newtonsMethod(F, Fprime, w0, k)
    iter = 0;
    wk = w0;
    while iter <= k
        wk = wk - F(wk) / Fprime(wk);
        iter = iter + 1;
    end
end