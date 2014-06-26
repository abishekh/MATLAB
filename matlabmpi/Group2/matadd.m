MPI_Init;
comm=MPI_COMM_WORLD;
s=MPI_Comm_size(comm);
rank=MPI_Comm_rank(comm);
m=4;
tag=1;
x=[1 2 3; 4 5 6; 7 8 9; 10 11 12];
y=[10 11 12; 7 8 9; 4 5 6; 1 2 3];
 
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
