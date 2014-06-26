MPI_Init;
comm = MPI_COMM_WORLD;
% Get size and rank
s = MPI_Comm_size(comm);
rank = MPI_Comm_rank(comm);
tag=1;
m=textread('mata.txt');
n=textread('matb.txt');
q=size(m)
matsum=[];
if(length(m) == length(n))
    if (rank == 0)
        for i=1:q(2)
            MPI_Send(i,tag,comm,m(:,i),n(:,i));
        end
        for i=1:q(2)
            q=MPI_Recv(i,tag,comm); 
            matsum=cat(2,matsum,q);
        end
        dlmwrite('matsumans.txt', matsum, '-append', 'delimiter', '\t');
    else
        [a,b]= MPI_Recv(0,tag,comm);
        o=a+b;
        MPI_Send(0,tag,comm,o);
    end
else
    disp('Number of processors must be equal to row numbers');
end
% Finalize Matlab MPI.
MPI_Finalize;
disp('SUCCESS');


