#!/bin/bash

mkdir -p /lustre/wei/run/COMROOT/C96_gcafs_cycled_noDA/gdas.20211220/18
cd /lustre/wei/run/COMROOT/C96_gcafs_cycled_noDA/gdas.20211220/18
ln -sf /lustre/sharedGWdata/global/htar/gdas.20211220/18/atmos .

mkdir -p /lustre/wei/run/COMROOT/C96_gcafs_cycled_noDA/gdas.20211221/00
cd /lustre/wei/run/COMROOT/C96_gcafs_cycled_noDA/gdas.20211221/00
ln -sf /lustre/sharedGWdata/global/htar/gdas.20211221/00/atmos .

exit 0

To get the tar file, log on to ursa:

 hsi get /NCEPPROD/hpssprod/runhistory/rh2021/202112/20211220/com_gfs_prod_gdas.20211220_18.gdas_nc.tar
 aws s3 cp com_gfs_prod_gdas.20211220_18.gdas_nc.tar ${BUCKET_URI}/Wei.Huang/global/htar/com_gfs_prod_gdas.20211220_18.gdas_nc.tar
 hsi get /NCEPPROD/hpssprod/runhistory/rh2021/202112/20211221/com_gfs_prod_gdas.20211221_00.gdas_nc.tar
 aws s3 cp com_gfs_prod_gdas.20211221_00.gdas_nc.tar ${BUCKET_URI}/Wei.Huang/global/htar/com_gfs_prod_gdas.20211221_00.gdas_nc.tar

On AWS:

 aws s3 cp ${BUCKET_URI}/Wei.Huang/global/htar/com_gfs_prod_gdas.20211220_18.gdas_nc.tar com_gfs_prod_gdas.20211220_18.gdas_nc.tar
 tar xvf com_gfs_prod_gdas.20211220_18.gdas_nc.tar
 aws s3 cp ${BUCKET_URI}/Wei.Huang/global/htar/com_gfs_prod_gdas.20211221_00.gdas_nc.tar com_gfs_prod_gdas.20211221_00.gdas_nc.tar
 tar xvf com_gfs_prod_gdas.20211221_00.gdas_nc.tar

