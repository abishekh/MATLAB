MPI_Init;
comm = MPI_COMM_WORLD;
% Get size and rank
s = MPI_Comm_size(comm);
rank = MPI_Comm_rank(comm);
tag=1;
sumans=0;
m=textread('1.txt');
if (rank == 0)
    b=1;
    p=length(m)/(s-1);
    e=p;
    for i=1:s-1
        display(b);
        display(e);
        MPI_Send(i,tag,comm,m(b:e));
        b=b+p;
        e=e+p;
    end
    for i=1:s-1
        an=MPI_Recv(i,tag,comm);
        sumans=sumans+an;
    end
    fid=fopen('ans.txt','w');
    fprintf(fid,'The sum  of the numbers is %1.1f',sumans);
    fclose(fid);
else
   r= MPI_Recv(0,tag,comm);
   MPI_Send(0,tag,comm,sum(r));
   
end
% Finalize Matlab MPI.
MPI_Finalize;
disp('SUCCESS');


