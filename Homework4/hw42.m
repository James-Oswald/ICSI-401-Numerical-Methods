
x = [-3, -2, -1, 0, 1, 2, 3]';
y = [-12.529999999999999, -3.02, 0.49, 1.00, 1.51, 5.02, 14.529999999999999]';


disp("The Vandermonde matrix of the problem:");
A = [ones(size(x)) x x.^2 x.^3];
disp(A);

disp("The Vector of coefficients:");
c = pinv(A)*y;
disp(c);

hold on
scatter(x,y)
fplot(@(x)c(4)*x.^3 + c(3)*x.^2 + c(2)*x + c(1));
xlim([-5 5])
ylim([-16 16])
hold off

disp("The Error:");
n = norm(A*c - y, 2);
disp(n);


