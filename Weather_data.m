% Author name: Robert Keen
% Email: keenro19@students.rowan.edu
% Course: MATLAB programming fall 2024 
% Assignment: Homework 2 
% Weather data
% Date: 10/04/2024

% Create weather_data.txt
fileID = fopen('weather_data.txt', 'w');
fprintf(fileID, 'Date,Temperature,Humidity,Precipitation\n');
fprintf(fileID, '2024-09-01,25.5,60,0\n');
fprintf(fileID, '2024-09-02,26.0,65,5\n');
fprintf(fileID, '2024-09-03,24.5,70,10\n');
fprintf(fileID, '2024-09-04,23.0,75,15\n');
fprintf(fileID, '2024-09-05,22.5,80,20\n');
fclose(fileID);