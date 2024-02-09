function plotfigure(joint, cartesian)
    t = 0:0.01:6;
    figure('Name', 'Joint Variables');
    labels = {'\theta1 (deg)', '\theta2 (deg)', 'd3 (mm)', '\theta4 (deg)'};
    for i = 1:4
        subplot(2, 2, i);
        plot(t, joint(i, :));
        grid on;
        xlabel('Time (s)');
        ylabel(labels{i});
    end
    figure('Name', 'Cartesian Position');
    labels = {'x (mm)', 'y (mm)', 'z (mm)', 'a (mm)', 'B (mm)', 'Y (mm)'};
    for i = 1:6
        subplot(2, 3, i);
        plot(t, cartesian(i, :));
        grid on;
        xlabel('Time (s)');
        ylabel(labels{i});
    end
end
