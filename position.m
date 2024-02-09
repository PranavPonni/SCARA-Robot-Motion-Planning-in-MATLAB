function position = position(accA, accB, accC, velAB, velBC, start)
    t = 0:0.01:0.49;
    A = start + accA/2*t.^2 ;
    Aprime = start + accA/2*0.5^2;
    t = 0:0.01:1.99;
    AB = Aprime + velAB*t;
    ABprime = Aprime + velAB*2 ;
    t = 0:0.01:0.99;
    B =  ABprime + accB/2*t.^2 + velAB*t;
    Bend = ABprime + accB/2 + velAB*1;
    t = 0:0.01:1.99;
    BC = Bend + velBC*t;
    pathend = Bend + velBC*2 ;
    t = 0:0.01:0.5;
    C = pathend + accC/2*t.^2 - accC/2*t;
    position = [A AB B BC C];
end
