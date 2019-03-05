TMPDIR=/home/evansj/me/tmp/ java -jar -Dconfig.file=hpc.conf /mnt/isilon/dbhi_bfx/apps/bin/cromwell-36.jar run test.wdl -i inputs.json &> test.err
