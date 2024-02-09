function cartesian = forwardkine(theta1, theta2, d3, theta4)
    l1 = 80;
    l2 = 80;
    x = l1 * cosd(theta1) + l2 * cosd(theta1 + theta2);
    y = l1 * sind(theta1) + l2 * sind(theta1 + theta2);
    z = 30 - d3;
    a = theta1 + theta2 - theta4;
    B = -theta2;
    Y = theta4 - 90;
    cartesian = [x; y; z; a; B; Y];
end
