function H = hpfilter(type,M,N,D,n)
if nargin == 4
    n=1;
end
Hlp=lpfilter(type,M,N,D,n);
H=1-Hlp;