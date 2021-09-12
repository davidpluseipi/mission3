#!/bin/bash
# AerE 361 Slurm Job
# Mission 3
# Professor Nelson

# This is an example of COMSOL job sbatch script.  You will need to edit this file to suit your needs.

# After making the necessary edits (and feel free to change the name of this file) you will submit the job like so:
#    sbatch  comsol-5.4-sample.sbatch

# All lines that begin with #SBATCH below are Slurm job parameters that are processed by the sbatch program when
# you submit the job.   Modify the job parameters to suit your needs.

# The --job-name is the name of the job as it appears in the queue.
#SBATCH --job-name=cylinder_flow.mph

# The --output parameter specifies the file where standard output from your job will be saved.
#  The standard output messages are output by COMSOL as your job is running and can be helpful for diagnostics.
# Note that COMSOL will save the actual results in the file indicated by the -outputfile option.
#SBATCH --output=cylinder_flow.output

# The --output parameter specifies the file where standard errors from your job
# will be written (The %j in the name gets replaced by the Slurm job number).
#SBATCH --error=cylinder_flow.%j.error

# The --nodes parameter specifies the number of nodes (machines) you are requesting for the job.
#SBATCH --nodes=4

# The --ntasks parameter specifies the total number of cores your job will need.
# If you request 4 nodes with 16 cores on each node, set --ntasks to 64.
#SBATCH --ntasks=64

# For us, 5 min should be fine, if you run into a problem, you could set it to 10 min.
# Specify the time you expect the job to run.  For 10 hours, set the time to 10:00:00.
#SBATCH --time=00:05:00

# MAKE SURE YOU UPDATE THIS WITH YOUR EMAIL!!!
# Specify the e-mail address you would like job status e-mails to be sent to.
#SBATCH --mail-user=netid@iastate.edu

# Specify the types of job status messages you would like to receive e-mail about:
#  BEGIN - send a message when the job starts.
#  FAIL - send a messages if the job fails.
#  END - send a message when the job runs to completion.
#SBATCH --mail-type=BEGIN,FAIL,END

# At this point, all of the job parameters for Slurm have been set by the #SBATCH lines above.
# Everything that follows are the commands you want this job to execute.

#  Start by going to the folder where the data for this job is located.
#  This is where the files used by the job should go.
cd .

# Module purge ensures that no other modules are loaded.
# module purge

# Load the COMSOL 5.4 module.
module load comsol/5.4

# This following environment variable may not be necessary, but setting it should't hurt anything.
export I_MPI_HYDRA_BOOTSTRAP=ssh

# In the following command, COMSOL is launched with the .mph file called naca0012_airfoil.mph.
# The output file is naca0012_airfoil_output.mph

# IMPORTANT - You will need to also change the -nn and -nnhost parameters to match your Slurm parameters for the job.
#    -nn specifies the total number of processors you are using across all machines in the job.
#        (e.g. for 4 machines with 16 processors each, you would use -nn 64).
#    -nnhost specifies how many processors you want to use on each machine.
#         On the Condo cluster, this number is usually 16.
#         On Nova this is usually 36.
# The following command tells COMSOL to launch 32 COMSOL worker threads, with 16 threads per machine.

comsol batch -mpibootstrap slurm -nn 8 -nnhost 2 -inputfile cylinder_flow.mph -outputfile cylinder_flow_solution.mph
