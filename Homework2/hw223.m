%2.3 Part 2
F1 = @(x) x^5 + x + 1;
%using the formula for digits of precision from 2.2
disp(bisectionSearch(F1, -1, 1, 5*10^(-4-1))); 

%2.3 Part 3
F2 = @(x) sin(x);
disp(bisectionSearch(F2, -pi/2, 5*pi/2, 5*10^(-4-1)));

%2.3 Part 1
function z = bisectionSearch(F, a, b, delta)
    %IVT Check, F(a) and F(b) have seperate signs,
    %IE there must be a 0 between a and b  
    if F(a) * F(b) > 0            
        z = NaN;
        return;
    end
    %precision check to see if we're acceptably close 
    %to the root
    while abs(a - b) > delta  
        %Finding the midpoint
        z = (a + b) / 2;
        %checking in which dir we overshot
        if F(a) * F(z) < 0     
            b = z;
        else
            a = z;
        end
    end
end

