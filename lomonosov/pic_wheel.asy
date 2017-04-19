unitsize(1.3cm);

path DOT = scale(0.03) * unitcircle;

// PLANE

draw((-1.5,-1.4) -- (1.7,-1.4));

// WHEEL

path HUB = unitcircle;
draw(HUB, black);
filldraw(DOT, black);

path ROLLER_TEMPLATE = 
    (arc((0,0), 1.4, -135, -45)
    --
    arc((0,-2), 1.4, 45, 135)
    -- cycle)
;

path ROLLER = 
    rotate(30) *
    ROLLER_TEMPLATE;

fill(ROLLER, lightgray + opacity(0.5));
draw(ROLLER, black);

path ROLLER_2 = rotate(90) * ROLLER;
draw(ROLLER_2, longdashed+gray);

path ROLLER_3 = rotate(180) * ROLLER;
draw(ROLLER_3, longdashed+gray);

path ROLLER_4 = rotate(270) * ROLLER;
draw(ROLLER_4, longdashed+gray);


// LOCAL COORDINATES

label("$\vec{n}^\perp_i$", 2.3*(cos(pi/6),sin(pi/6)));
draw((0,0) -- 2*(cos(pi/6),sin(pi/6)), arrow = Arrow(SimpleHead));

label("$\vec{n}^z_i$", 1.8*(cos(pi/2+pi/6),sin(pi/2+pi/6)));
draw((0,0) -- 1.5*(cos(pi/2+pi/6),sin(pi/2+pi/6)), arrow = Arrow(SimpleHead));

// ANGLES

label("$\kappa_j$", 0.8*(cos(-2*pi/8),sin(-2*pi/8)), blue);
draw((0,0) -- -1.4*(cos(pi/2+pi/6),sin(pi/2+pi/6)), dashed+gray);
draw((0,0) -- 1.4*(cos(-pi/2),sin(-pi/2)), dashed+gray);
draw(arc(
    (0,0),
    -1.15*(cos(pi/2+pi/6),sin(pi/2+pi/6)),
    1.15*(cos(pi/6),sin(pi/6))
), arrow=Arrow(TeXHead), blue);

label("$\chi_i$", 1.6*(cos(-pi/12+pi/6),sin(-pi/12+pi/6)), red);
draw((0,0) -- (1.6,0), dashed+gray);
draw(arc(
    (0,0),
    1.3*(1,0),
    1.3*(cos(pi/6),sin(pi/6))
), arrow=Arrow(TeXHead), red);
