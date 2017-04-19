unitsize(1.3cm);

path DOT = scale(0.03) * unitcircle;

// INERTIAL COORDINATES

label("$X$", (1.85,-1.4));
draw((-1.5,-1.4) -- (1.7,-1.4), arrow = Arrow(TeXHead));

label("$Y$", (-1.2, 1.6));
draw((-1.4,-1.5) -- (-1.4,1.7), arrow = Arrow(TeXHead));

label("$Z$", (-1.6, -1.2));
draw(shift(-1.4, -1.4) * scale(0.1) * unitcircle);

label("$O$", (-1.2, -1.2));
filldraw(shift(-1.4, -1.4) * DOT, black);

// CART

path PLATFORM = unitcircle;
draw(PLATFORM, black);
filldraw(DOT, black);
label("$S(x, y)$", (-0.1, -0.2));

path WHEEL = shift(0, -1.2) * box((0.3,0.05), (-0.3,-0.05));

fill(WHEEL, mediumgray);
draw(WHEEL, black);

path WHEEL_2 = rotate(120) * WHEEL;
fill(WHEEL_2, mediumgray);
draw(WHEEL_2, black);

path WHEEL_3 = rotate(240) * WHEEL;
fill(WHEEL_3, mediumgray);
draw(WHEEL_3, black);

// LOCAL COORDINATES

label("$\xi$", 2.2*(cos(pi/6),sin(pi/6)));
draw((0,0) -- 2*(cos(pi/6),sin(pi/6)), arrow = Arrow(SimpleHead));

label("$\eta$", 1.7*(cos(pi/2+pi/6),sin(pi/2+pi/6)));
draw((0,0) -- 1.5*(cos(pi/2+pi/6),sin(pi/2+pi/6)), arrow = Arrow(SimpleHead));

// ANGLES

label("$\alpha_i$", 0.65*(cos(pi/4+pi/6),sin(pi/4+pi/6)), blue);
draw((0,0) -- 1.2*(cos(pi-pi/6),sin(pi-pi/6)), dashed+gray);
draw(arc(
    (0,0),
    0.5*(cos(pi/6),sin(pi/6)),
    0.5*(cos(pi-pi/6),sin(pi-pi/6))
), arrow=Arrow(TeXHead), blue);

label("$\theta$", 0.75*(cos(-pi/12+pi/6),sin(-pi/12+pi/6)), heavygreen);
draw((0,0) -- (1.2,0), dashed+gray);
draw(arc(
    (0,0),
    0.6*(1,0),
    0.6*(cos(pi/6),sin(pi/6))
), arrow=Arrow(TeXHead), heavygreen);

label("$\chi_i$", 1.6*(cos(pi/6),sin(pi/6)) + (0, 0.3), red);
draw(arc(
    1.3*(cos(pi/6),sin(pi/6)),
    1.3*(cos(pi/6),sin(pi/6)) + 0.3*(cos(pi/6+pi/4),sin(pi/6 + pi/4)),
    1.3*(cos(pi/6),sin(pi/6)) + 0.3*(cos(pi/6-pi/4),sin(pi/6 - pi/4)),
    CW
), arrow=Arrow(TeXHead), red);
