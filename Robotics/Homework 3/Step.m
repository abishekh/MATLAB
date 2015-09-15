function Z=Step(Xstart,Xend,tau,deltat)

x=Xstart(1);
xd=Xstart(2);
xdd=Xstart(3);

xf=Xend(1);
xfd=Xend(2);
xfdd=Xend(3);

C=[x xd 0.5*xdd 0 0 0];
tau2=power(tau,2);
tau3=power(tau,3);
tau4=power(tau,4);
tau5=power(tau,5);
C= transpose(C);
tauMat = [tau3 tau4 tau5 ; 3*tau2 4*tau3 5*tau4 ; 6*tau 12*tau2 20*tau3];
XA11= xf-C(1,1)-(C(2,1)*tau)-C(3,1)*tau2;
XA21=xfd-C(2,1)-2*C(3,1)*tau;
XA31=xfdd-2*C(3,1);
A = [XA11; XA21; XA31];

C(4:6)=tauMat\A;
    newx=0;
    newdx=0;
    newddx=0;
    newx=C(1) + (C(2).*deltat) + (C(3).*power(deltat,2)) + (C(4).*power(deltat,3)) + (C(5).*power(deltat,4)) + (C(6).*power(deltat,5));
    newdx=C(2)+ (2.*C(3).*deltat)+ (3.*C(4).*power(deltat,2)) + (4.*C(5).*power(deltat,3))+ (5.*C(6).*power(deltat,4));
    newddx=(2.*C(3))+(6.*C(4).*deltat)+(12.*C(5).*power(deltat,2))+(20.*C(6).*power(deltat,3));

 Z=[newx newdx newddx];
end