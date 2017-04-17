unitsize(0.8cm);

import three;

draw(-X--2X ^^ -2Y--2Y ^^ -Z--1.6Z, heavygray);

label("$\chi_{-}$", 1.8(X+Z)-Y);
draw(plane(3X,3Z,Y-1.5(X+Z)), blue);

label("$\chi_{+}$", 1.8(-X+Z)+Y);
draw(plane(3X,3Z,-Y-1.5(X+Z)), blue);

label("$\chi_i$", 2.2Y);
label("$q$", 2.4X);
label("$\nu$", 2Z);

dot(O);

draw(-Y+X+Z .. -0.2Y+0.8X+Z .. 0.2Y-0.8X+Z .. Y-X+Z, deepgreen);
dot(-Y+X+Z ^^ Y-X+Z);

draw(Y-X+Z -- -Y-X+Z, red + dashed);
dot(-Y-X+Z);

draw(-Y+X+Z -- Y+X+Z, red + dashed);
dot(Y+X+Z);


currentprojection = perspective(2, 1, 1.25);