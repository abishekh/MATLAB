MPI_Init;
comm=MPI_COMM_WORLD;
s=MPI_Comm_size(comm);
rank=MPI_Comm_rank(comm);
tag=1;
result=0;
m=rand(20);
if(rank==0)
    b=1;p=round(length(m)/(s-1));e=p;
    for i=1:s-1
        MPI_Send(i,tag,comm,m(b:e));
        b=b+p;e=e+p;
    end
%     pause(2.0);
    for i=1:s-1
        t=MPI_Recv(i,tag,comm);
        result=result+t;
    end
    r=[result result];
    disp(['Result: ',num2str(r)]);
% disp(['Result: ',result]);
else
    t1=MPI_Recv(0,tag,comm);
    q=sum(t1);
    
%     for i=t1; 
%         q=q+t1;
%     end
    MPI_Send(0,tag,comm,q);
end
MPI_Finalize;


