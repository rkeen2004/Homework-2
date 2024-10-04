% Author name: Robert Keen
% Email: keenro19@students.rowan.edu
% Course: MATLAB programming fall 2024 
% Assignment: Homework 2 
% Population growth 
% Date: 10/04/2024

% a) Creating the row vector
population = [5000 5200 5350 5600 5800];

% b) Calculating the year-over-year growth rate
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1) * 100;

% c) Create the population data matrix
% Prepend a 0 for the first year growth rate since it is undefined
pop_data = [population; [0, growth_rate]];

% d) Print a formatted table showing each year's population and growth rate
fprintf('Year\tPopulation\tGrowth Rate (%%)\n');
fprintf('--\n');
for i = 1:length(population)
    if i == 1
        fprintf('%d\t%d\t\tN/A\n', i, population(i));  % For the first year
    else
        fprintf('%d\t%d\t\t%.2f\n', i, population(i), growth_rate(i-1));  % Growth rate starts from the second year
    end
end