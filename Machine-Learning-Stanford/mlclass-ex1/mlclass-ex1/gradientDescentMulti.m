function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
temp=[0 0 0];





for iter = 1:num_iters
xsubiter = 1 ;

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %





	prediction = X * theta;

for mi = 1:m
while xsubiter <= size(X,2)



	temp(xsubiter) = alpha .* (1./m) .* ( sum(((prediction-y) * X(mi,xsubiter))));

	theta(xsubiter) = theta(xsubiter) - temp(xsubiter);

	
	xsubiter = xsubiter + 1;
	
end

	mi=mi+1;
end

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

xsubiter = 1 ;
end

end
