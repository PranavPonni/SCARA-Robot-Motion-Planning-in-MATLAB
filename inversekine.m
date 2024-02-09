function joint = inversekine(x, y, z, alpha)
    l1 = 80;
    l2 = 80;
    theta1 = atan2d(y, x) - atan2d(l2 * sind(alpha), l1 + l2 * cosd(alpha));
    theta2 = atan2d(l2 * sind(alpha), l1 + l2 * cosd(alpha));
    d3 = 30 - z;
    theta4 = theta1 + theta2 - alpha;
    joint = [theta1; theta2; d3; theta4];
end
