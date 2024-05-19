    clear;
    x = 0:4;
    y = 0:4;
    z = [4,0,-4,0,4;3,2,-2,2,3;2,1,0,1,2;3,2,-2,2,3;4,0,-4,0,4];
    xq = 0:0.1:4;
    yq = 0:0.1:4;
    [X, Y] = meshgrid(x, y);
    [Xq, Yq] = meshgrid(xq, yq);
    Zq = interp2(X, Y, z, Xq, Yq, 'spline');
    mesh(Xq, Yq, Zq);