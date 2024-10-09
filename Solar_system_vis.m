% Author name: Robert Keen
% Email: keenro19@students.rowan.edu
% Course: MATLAB programming fall 2024 
% Assignment: Homework 2 
% Solar System
% Date: 10/09/2024

% Step 1: Define the data
planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};
planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.22, 30.05]; % Average distances in AU
planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88]; % Relative sizes (Earth = 1)

% Step 2: Create a figure with two subplots
figure;

% Subplot 1: Scatter plot of planet distances vs. planet sizes
subplot(2, 1, 1);
scatter(planet_distances, planet_sizes * 10, 100 * planet_sizes, 'filled'); % Scale marker size
title('Planet Distances vs. Sizes');
xlabel('Distance from Sun (AU)');
ylabel('Relative Size (Scaled)');
grid on;
hold on;

% Add planet names to scatter plot
for i = 1:length(planet_names)
    text(planet_distances(i), planet_sizes(i) * 10, planet_names{i}, ...
        'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
end

% Adding legend with different colors for each planet
colors = lines(length(planet_names)); % Generate distinct colors
for i = 1:length(planet_names)
    scatter(nan, nan, 100 * planet_sizes(i), 'filled', 'MarkerFaceColor', colors(i, :), 'DisplayName', planet_names{i});
end
legend('show');

hold off;

% Subplot 2: Bar chart of planet distances
subplot(2, 1, 2);
bar(planet_distances, 'FaceColor', [0.2 0.6 0.8]);
title('Average Distance of Planets from the Sun');
xlabel('Planets');
ylabel('Distance (AU)');
set(gca, 'XTickLabel', planet_names); % Set x-tick labels
grid on;

% Step 3: Save the figure as an image file
saveas(gcf, 'solar_system_visualization.png');