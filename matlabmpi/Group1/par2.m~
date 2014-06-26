MPI_Init;
comm=MPI_COMM_WORLD;
s=MPI_Comm_size(comm);
rank=MPI_Comm_rank(comm);
tag=1;
result=0;
m=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20];
if(rank==0)
    b=1;
    p=round(length(m)/(s-1));
    e=p;
    for i=1:(s-1)
        MPI_Send(i,tag,comm,m(b:e));
        b=b+p;e=e+p;
    end
    for i=1:(s-1)
        t=MPI_Recv(i,tag,comm);
        result=result+t;
    end
    disp(['Result: ',num2str(result)]);
else
    t1=MPI_Recv(0,tag,comm);disp(t1);
    q=sum(t1);
    disp(['Result',num2str(q)]);
    MPI_Send(0,tag,comm,q);
end
MPI_Finalize;
disp('Success');

