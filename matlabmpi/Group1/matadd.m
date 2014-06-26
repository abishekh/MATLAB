MPI_Init;
comm=MPI_COMM_WORLD;
s=MPI_Comm_size(comm);
rank=MPI_Comm_rank(comm);
m=4;
tag=1;
x=[10 20 30; 40 50 60; 70 80 90; 10 30 10];
y=[5 10 15; 20 25 30; 35 40 50; 20 10 10];
 
p=round(m/(s-1));
if(rank==0)
    b=1;
    e=p;
    o=zeros(1,3)  ;
    for i=1:s-1
        c=[x(b:e,:);y(b:e,:)];
        MPI_Send(i,tag,comm,c);
        b=b+p; e=e+p;
    end
    
    for i=1:(s-1)
        t=MPI_Recv(i,tag,comm);
        o=[o;t];
    end
%     disp(['Output Matrix',num2str(o)]);
    disp(o);
else

    w=MPI_Recv(0,tag,comm);
    k=size(w);
    x1=w(1:k(1)/2,:);
    y1=w(k(1)/2+1:k(1),:);
    a1=x1+y1;
    disp(a1);
    MPI_Send(0,tag,comm,a1);
end
MPI_Finalize;
