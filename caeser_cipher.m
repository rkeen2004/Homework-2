% Author name: Robert Keen
% Email: keenro19@students.rowan.edu
% Course: MATLAB programming fall 2024 
% Assignment: Homework 2 
% Simple encription function
% Date: 10/04/2024

function encrypted_message = caeser_cipher(message, shift)
    % Initialize the encrypted message
    encrypted_message = '';
    
    % Loop through each character in the message
    for i = 1:length(message)
        char = message(i);
        
        % Check if the character is a lowercase letter
        if ischar(char) && char >= 'a' && char <= 'z'
            % Shift the character and wrap around
            new_char = char + shift;
            if new_char > 'z'
                new_char = new_char - 26; % Wrap around if past 'z'
            end
            encrypted_message = [encrypted_message new_char]; % Append to result
        else
            % If not a lowercase letter, keep it unchanged
            encrypted_message = [encrypted_message char];
        end
    end
end