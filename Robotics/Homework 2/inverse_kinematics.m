function thetad = inverse_kinematics(u)
% performs inverse kinematics computations with various methods

% Stefan Schaal, March 2009

% split the input u into meaningful quantities

n = (length(u)-2)/2;

theta = u(1:n);
xd    = u(n+1:n+2);
links = u(n+3:end);

n = length(theta);
m = length(xd);
w=[1.0,0.5,0.1,0.01];
W=eye(n).*[w;w;w;w];
Wi=inv(W);
theta0 = [0.1 ;0.1; 0.1; 0.1];

% NOTE: insert your Jacobian calculation here

%Center of mass jacobian:
J14=(-links(4)*sin(theta(1)+theta(2)+theta(3)+theta(4)));
J13=-links(3)*sin(theta(1)+theta(2)+theta(3))+J14;
J12=-links(2)*sin(theta(1)+theta(2))+J13;
J11=0.25.*(-links(1)*sin(theta(1))+J12);


J24=(links(4)*cos(theta(1)+theta(2)+theta(3)+theta(4)));
J23=links(3)*cos(theta(1)+theta(2)+theta(3))+J24;
J22=links(2)*cos(theta(1)+theta(2))+J23;
J21=0.25.*(links(1)*cos(theta(1))+J22);

J =[J11 J12 J13 J14; J21 J22 J23 J24] ;



Jt=transpose(J);
Jhash=Jt/(J*Jt);
I=eye(n);




%Wighted Pseudo-inverse:
%Jhashw=Wi*J'/(J*Wi*J');

%Inverse kinemetic methods:

%Jacobian transpose :
%thetad = Jt*xd;                                   

%Jacobian pseudo inverse :
%thetad = Jhash*xd;                                    


%Jacobian pseudo inverse with null space optimization:
%thetad = Jhash*xd + (I-Jhash*J)*(theta0-theta);     


%Weighted Jacobian pseudo inverse :
%thetad = Jhashw*xd; 


%Weighted Jacobian pseudo inverse with null space optimization:
%thetad = Jhashw*xd + (I-Jhashw*J)*(theta0-theta);   
