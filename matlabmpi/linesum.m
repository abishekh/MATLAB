MPI_Init;
comm = MPI_COMM_WORLD;
% Get size and rank
s = MPI_Comm_size(comm);
rank = MPI_Comm_rank(comm);
tag=1;
m=textread('line.txt');
q=size(m)
if(q(1)<=s-1)
    if (rank == 0)
        for i=1:q(1)
            MPI_Send(i,tag,comm,m(i,:));
        end
    else
        r= MPI_Recv(0,tag,comm);
        fid=fopen('lineans.txt','a');
        fprintf(fid,'Row %1.0f sum is %1.1f\n',rank,sum(r));
        fclose(fid);
    end
else
    disp('Number of processors must be equal to row numbers');
end
% Finalize Matlab MPI.
MPI_Finalize;
disp('SUCCESS');


