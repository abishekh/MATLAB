function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
reg=lambda/length(y) * theta;
n=size(theta,1);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%



hx=(X * theta);





J =((1./(2*m)) * sum( (hx - y).^2 ) ) + ((lambda./(2*m) * sum (theta(2:size(X,2),1) .^ 2)));


% =========================================================================


for z=1:n

xsub=X(:,z);

grad(z) = (1/m) .* sum((hx - y) .* xsub);

end
	grad(2:end,1)=grad(2:end,1).+ reg(2:end,1);


grad = grad(:);

end
