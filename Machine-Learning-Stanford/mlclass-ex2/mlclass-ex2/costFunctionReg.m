function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
n=size(theta,1);
regset=ones(m,1);
regset(1)=0;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

regular=lambda * theta;
reg=lambda/length(y) * theta;
hx= sigmoid(X * theta);

J = (1./m) * sum(( -y .* log(hx)) - (1-y) .* log(1 .- hx)) + (lambda/(2*m) * sum (theta(2:size(X,2),1) .^ 2));


 
for z=1:n

xsub=X(:,z);
	
grad(z) = (1/m) .* sum((hx - y) .* xsub);

end
	grad(2:28,1)=grad(2:28,1).+ reg(2:28,1);
	
% =============================================================

end
