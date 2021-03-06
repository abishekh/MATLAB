MPI_Init;
comm = MPI_COMM_WORLD;
s = MPI_Comm_size(comm);
rank = MPI_Comm_rank(comm);
tag = 1;
m = [1 2 3 4; 5 4 3 2; 1 2 1 2; 3 4 2 1];
n = [2 3 4 3 ; 5 4 2 1; 3 4 2 3; 2 3 4 1];
if(rank == 0)
    b = 1;
    p = round(length(m)/(s-1));
    e = p;
    for i=1:s-1
        MPI_Send(i,tag,comm,[m(b:e,:);n(b:e,:)]);
        b = b+p;
        e = e+p;
    end
    for i=1:s-1
        t = MPI_Recv(i,tag,comm);
        result = [result;t];
    end
    disp(result);
else
    t1 = MPI_Recv(0,tag,comm);
    k=size(t1);
    a=t1(1:k(1)/2,:);
    b=t1(k(1)/2+1:k(1),:);
    m1=a+b;
        
    MPI_Send(0,tag,comm,m1);
end
MPI_Finalize;
disp(result);