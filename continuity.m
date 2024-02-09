function continuity = continuity(A, B, C)
    accA = 0.727*(B - A);
    accC = 0.727*(B - C);
    velAB = 0.363*(B - A);
    velBC = 0.363*(C - B);
    accB = velBC - velAB;
    continuity = [accA, accB, accC, velAB, velBC, A];
end
