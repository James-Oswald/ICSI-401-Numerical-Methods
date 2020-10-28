
A = [1 1 1; 0 2 5; 2 5 -1];
b = [6 -4 27]';
[L, U, P] = lu(A);
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