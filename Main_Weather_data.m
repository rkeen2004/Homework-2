% Read the data from 'weather_data.txt' into a cell array
data = readcell('Weather_data.txt');

% Extract the numerical data
% Skip the header row by starting from the second row
temperature = cell2mat(data(2:end, 2));  % Extract Temperature
humidity = cell2mat(data(2:end, 3));     % Extract Humidity
precipitation = cell2mat(data(2:end, 4)); % Extract Precipitation

% Calculate statistics
average_temperature = mean(temperature);
average_humidity = mean(humidity);
total_precipitation = sum(precipitation);

% Create a summary of the statistics
summary = {
    'Average Temperature', average_temperature;
    'Average Humidity', average_humidity;
    'Total Precipitation', total_precipitation
};

% Save these statistics to 'weather_summary.txt'
fileID = fopen('weather_summary.txt', 'w');
for i = 1:size(summary, 1)
    fprintf(fileID, '%s: %.2f\n', summary{i, 1}, summary{i, 2});
end
fclose(fileID);