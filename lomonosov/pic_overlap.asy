unitsize(1.3cm);

path DOT = scale(0.03) * unitcircle;

// PLANE

draw((-1.5,-1.4) -- (1.7,-1.4));

// WHEEL

path HUB = unitcircle;
draw(HUB, black);
filldraw(DOT, black);

path ROLLER_TEMPLATE = 
    (arc((0,0), 1.4, -90 - 180/6, -90 + 180/6)
    --
    arc((0,-2), 1.4, 90 - 180/6, 90 + 180/6)
    --
    cycle)
;

path FIRST_ROLLER = rotate(30) * ROLLER_TEMPLATE;
draw(FIRST_ROLLER, black);
fill(FIRST_ROLLER, lightgray + opacity(0.5));

for (int i = 1; i < 5; ++i) {
    draw(rotate(30 + 60*i) * ROLLER_TEMPLATE, longdashed+gray);
}

path LAST_ROLLER = rotate(30+60*5) * ROLLER_TEMPLATE;
draw(LAST_ROLLER, black);
fill(LAST_ROLLER, lightgray + opacity(0.5));


// LOCAL COORDINATES

label("$\vec{n}^\perp_i$", 2.3*(cos(pi/6),sin(pi/6)));
draw((0,0) -- 2*(cos(pi/6),sin(pi/6)), arrow = Arrow(SimpleHead));

label("$\vec{n}^z_i$", 1.8*(cos(pi/2+pi/6),sin(pi/2+pi/6)));
draw((0,0) -- 1.5*(cos(pi/2+pi/6),sin(pi/2+pi/6)), arrow = Arrow(SimpleHead));

// ANGLES

draw((0,0) -- 1.4*(cos(-pi/3),sin(-pi/3)), dashed+gray);
draw((0,0) -- 1.4*(cos(-pi/2),sin(-pi/2)), dashed+gray);

draw((0,0) -- (1.6,0), dashed+gray);
