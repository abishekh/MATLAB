MPI_Init;
Comm=MPI_COMM_WORLD;
S=MPI_Comm_size(Comm);
rank=MPI_Comm_rank(Comm);
tag=1;
result=0;
%m=rand(1,1000);
m=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20];
if(rank==0)
    b=1;p=round(length(m)/(S-1));e=p;

    for i=1:S-1
        MPI_Send(i,tag,Comm,m(b:e));
        b=b+p;e=e+p;
    end
    for i=1:S-1
        t=MPI_Recv(i,tag,Comm);
        result=result+t;
    end
    disp(['Result ',num2str(result)]);
else
    t1=MPI_Recv(0,tag,Comm);
    m1=sum(t1);
    disp(['Result ',num2str(m1)]);
    MPI_Send(0,tag,Comm,m1);
end
MPI_Finalize;
