#!/bin/bash

set -x

yyyymmdd=20240224
hh=00

tarfile=com_gfs_v16.3_gdas.${yyyymmdd}_${hh}.gdas_restart.tar
for item in abias abias_air abias_int abias_pc radstat
do
  fn="./gdas.${yyyymmdd}/${hh}/atmos/gdas.t${hh}z.${item}"
  tar xvf ${tarfile} ${fn}
done

exit 0

To get the tar file, log on to ursa:

 hsi get /NCEPPROD/hpssprod/runhistory/rh2024/202402/20240223/com_gfs_v16.3_gdas.20240223_18.gdas_restart.tar
 aws s3 cp com_gfs_v16.3_gdas.20240223_18.gdas_restart.tar ${BUCKET_URI}/Wei.Huang/global/htar/com_gfs_v16.3_gdas.20240223_18.gdas_restart.tar
 hsi get /NCEPPROD/hpssprod/runhistory/rh2024/202402/20240224/com_gfs_v16.3_gdas.20240224_00.gdas_restart.tar
 aws s3 cp com_gfs_v16.3_gdas.20240224_00.gdas_restart.tar ${BUCKET_URI}/Wei.Huang/global/htar/com_gfs_v16.3_gdas.20240224_00.gdas_restart.tar

On AWS:

 aws s3 cp ${BUCKET_URI}/Wei.Huang/global/htar/com_gfs_v16.3_gdas.20240223_18.gdas_restart.tar com_gfs_v16.3_gdas.20240223_18.gdas_restart.tar
 aws s3 cp ${BUCKET_URI}/Wei.Huang/global/htar/com_gfs_v16.3_gdas.20240224_00.gdas_restart.tar com_gfs_v16.3_gdas.20240224_00.gdas_restart.tar

