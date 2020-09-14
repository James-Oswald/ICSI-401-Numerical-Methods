
% Ex 2
disp("Ex 2:");
A = [10, -3; 4, 2];
B = [1, 0; -1, 2];
v = [1; 2];
w = [1; 1];

disp("a)");
disp(v'*w);
disp("b)");
disp(v*w');
disp("c)");
disp(A*v);
disp("d)");
disp(A'*v);
disp("e)");
disp(A*B);
disp("f)");
disp(B*A);
disp("g)");
disp(A^2);
disp("h)");
disp(B^(-1)*w);
disp("i)");
disp(A^(-1)*v);

disp("Ex 3:");
%Ex 3
hold on
for k = 1:5
    fplot(@(x) sin(k*x), [0, 2*pi]);
end
hold off
