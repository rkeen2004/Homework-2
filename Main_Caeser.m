% Author name: Robert Keen
% Email: keenro19@students.rowan.edu
% Course: MATLAB programming fall 2024 
% Assignment: Homework 2 
% Simple encription function
% Date: 10/04/2024

% Main script to prompt user input and display results

% Prompt user for input
user_message = input('Enter a message (lowercase letters only): ', 's');
shift_value = input('Enter a shift value (1-25): ');

% Validate the shift value
if shift_value >= 1 && shift_value <= 25
    % Call the caesar_cipher function
    encrypted_message = caeser_cipher(user_message, shift_value);
    
    % Print the original and encrypted messages
    fprintf('Original message: %s\n', user_message);
    fprintf('Encrypted message: %s\n', encrypted_message);
else
    fprintf('Error: Shift value must be between 1 and 25.\n');
end