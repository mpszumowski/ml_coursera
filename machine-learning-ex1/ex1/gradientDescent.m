function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
l = length(theta);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
  
    theta = theta - (alpha * (1/m) * sum((X * theta - y) .* X))'  
  
    % for i = 1:l
    
      % theta_index = theta(i) - alpha * (1/m) * sum(((X * theta) - y) .* X(:, i));
      %% theta_one = theta(2) - alpha * (1/m) * sum(((X * theta) - y) .* X(:,2));
      % theta(i) = theta_index;
    
    % endfor
    disp(theta)


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    % disp(J_history(iter));

end

end
