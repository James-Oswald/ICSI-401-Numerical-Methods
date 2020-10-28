A = [10^-20 1; 1 1];
b = [1 1]';
[L, U, P] = lu(A);
format longE;
disp(solve_with_LU(L, U, P, b))

function x = solve_with_LU(L, U, P, b)
%
% Given a lower triangular matrix L, an upper triangular matrix U,
% a permutation matrix P, and a vector b,
% return a solution to the equation P'LUx = b.
%
    z = P'\b;
    y = L\z;
    x = U\y;
end