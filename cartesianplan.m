A = [80, -80, 0, -90]';
B = [130, 0, 0, 0]';
C = [80, 80, 0, 90]';
P = continuity(A, B, C);
% array for cartesian points
x = position(P(1,1), P(1,2), P(1,3), P(1,4), P(1,5), P(1,6));
y = position(P(2,1), P(2,2), P(2,3), P(2,4), P(2,5), P(2,6));
z = position(P(3,1), P(3,2), P(3,3), P(3,4), P(3,5), P(3,6));
alpha = position(P(4,1), P(4,2), P(4,3), P(4,4), P(4,5), P(4,6));
beta = zeros(1,601);
gamma = zeros(1,601) + 180;
cartesian = [
    x
    y
    z
    alpha
    beta
    gamma];
joint = zeros(4, 601);
for i = 1:601
    joint(:,i) = [inversekine(cartesian(1,i), cartesian(2,i), cartesian(3,i), cartesian(4,i))];
end
plotfigure(joint, cartesian);
