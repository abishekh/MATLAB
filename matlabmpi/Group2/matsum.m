a=[1 2 3; 4 5 6; 7 8 9];
b=[9 8 7; 6 5 4; 3 2 1];
m=size(a);
p=size(b);

if(rank==0)
for(i=1:m)
    MPI_send(i,tag,comm,a(i,:),b);
end
for i=1:M
    t=MPI_recv(i,tag,comm)
    o=cat(1,0,t);
    
    