% MATLAB Script: stock_analysis.m

% Step 1: Read the stock data from 'stock_data.txt'
data = load('stock_data.txt');

% Step 2: Calculate required statistics
average_price = mean(data);
highest_price = max(data);
lowest_price = min(data);
price_increases = sum(diff(data) > 0);

% Step 3: Print the results to the command window
fprintf('Average Closing Price: %.2f\n', average_price);
fprintf('Highest Closing Price: %.2f\n', highest_price);
fprintf('Lowest Closing Price: %.2f\n', lowest_price);
fprintf('Number of Days with Price Increase: %d\n', price_increases);

% Step 4: Create a line plot
figure;
plot(data, 'b-o', 'DisplayName', 'Daily Closing Prices');
hold on;
yline(average_price, 'r--', 'Average Price', 'DisplayName', 'Average Price');
yline(highest_price, 'g--', 'Highest Price', 'DisplayName', 'Highest Price');
yline(lowest_price, 'm--', 'Lowest Price', 'DisplayName', 'Lowest Price');
hold off;

% Step 5: Add labels and title
xlabel('Day');
ylabel('Closing Price');
title('Stock Closing Prices Analysis');
legend('show');
grid on;

% Step 6: Save the plot as an image file
saveas(gcf, 'stock_analysis.png');

% Step 7: Write a summary of the analysis to 'stock_summary.txt'
fid = fopen('stock_summary.txt', 'w');
fprintf(fid, 'Stock Analysis Summary:\n');
fprintf(fid, '-----------------------\n');
fprintf(fid, 'Average Closing Price: %.2f\n', average_price);
fprintf(fid, 'Highest Closing Price: %.2f\n', highest_price);
fprintf(fid, 'Lowest Closing Price: %.2f\n', lowest_price);
fprintf(fid, 'Number of Days with Price Increase: %d\n', price_increases);
fclose(fid);
