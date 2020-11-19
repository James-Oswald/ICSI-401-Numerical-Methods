

A = [6 2 -1; 2 5 1; -1 1 4];
x = [1 1 1]';

disp("Real Eigen Values and Vecs of A")
[vi, ei] = eig(A);
disp(ei);
disp(vi);

disp("Power method Eigen Values and Vecs of A")
[e1, v1] = powerMethod(x, A, 50);
disp(e1);
disp(v1);


function [x,v] = powerMethod(x0, A, itter)
    x = x0;
    for i = 1:itter
       z = A*x;
       x = z/norm(z);
       v = x'*A*x;
    end
end