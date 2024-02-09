A = [-90, 90, 30, 90]';
B = [-45, 90, 30, 45]';
C = [0, 90, 30, 0]';
P = continuity(A, B, C);
% array for joint variables
theta1 = position(P(1,1), P(1,2), P(1,3), P(1,4), P(1,5), P(1,6));
theta2 = position(P(2,1), P(2,2), P(2,3), P(2,4), P(2,5), P(2,6));
d3 = position(P(3,1), P(3,2), P(3,3), P(3,4), P(3,5), P(3,6));
theta4 = position(P(4,1), P(4,2), P(4,3), P(4,4), P(4,5), P(4,6));
joint = [
    theta1
    theta2
    d3
    theta4];
cartesian = zeros(6, 601);
for i = 1:601
    cartesian(:,i) = [forwardkine(joint(1,i), joint(2,i), joint(3,i), joint(4,i))];
end
plotfigure(joint, cartesian);
