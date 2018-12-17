#! /usr/bin/bash
srun --partition=amd-shortq --gres=gpu ./cudalign --no-flush --stage-1 $1 $2

# masa-cudalign --no-flush --stage-1 AF133821.1.fasta AY352275.1.fasta
#
# The parameter --no-flush informs that no data should be saved to the disk to
# the next stages, and the --stage-1 parameter forces the execution just of the
# first stage, which returns the optimal score.
