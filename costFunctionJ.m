function J = costFunctionJ(x, y, theta)

% X is the 'design matrix' containting our training examples
% Y is the class labels

m = size(x, 1);     % number of training samples
predictions = x * theta;        % predictions of hypothesis on all m examples
sqrErrors = (predictions - y).^2;       % squared errors

J = 1/(2*m) * sum(sqrErrors);