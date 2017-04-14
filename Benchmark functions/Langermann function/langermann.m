d = length(xx);

if (nargin < 2)
    m = 5;
end

if (nargin < 3)
    if (m == 5)
        c = [1, 2, 5, 2, 3];
    else
        error('Value of the m-dimensional vector c is required.')
    end
end

if (nargin < 4)
    if (m==5 && d==2)
        A = [3, 5; 5, 2; 2, 1; 1, 4; 7, 9];
    else
        error('Value of the (mxd)-dimensional matrix A is required.')
    end
end

outer = 0;
for ii = 1:m
    inner = 0;
    for jj = 1:d
        xj = xx(jj);
        Aij = A(ii,jj);
        inner = inner + (xj-Aij)^2;
    end
    new = c(ii) * exp(-inner/pi) * cos(pi*inner);
    outer = outer + new;
end

y = outer;

end
