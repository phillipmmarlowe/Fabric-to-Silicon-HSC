echo "Setting up Cadence environment..."
# Template for setting up cadence environment

# Native eq1 commands
# export LM_LICENSE_FILE=$LM_LICENSE_FILE:/mada/software/license/license.dat
# export INNOV_DIR=/mada/software/cadence/INNOVUS211
# export GENUS_DIR=/mada/software/cadence/GENUS211

# CUSTOM FOR HSC FLOW: RUN CADENCE SETUP SCRIPT
source /opt/software/setup.sh

# F2S Docker Contain commands
export LM_LICENSE_FILE=$LM_LICENSE_FILE:/opt/software/license/license.dat
export INNOV_DIR=/opt/software/cadence/INNOVUS211
export GENUS_DIR=/opt/software/cadence/GENUS211

#export QRC_DIR=?? ## Quantus QRC
#export LEC_DIR=??
#export VOLTUS_TEMPUS_DIR=??

# Native eq1
# CDS_LIC_FILE=/mada/software/license

# F2S container
CDS_LIC_FILE=/opt/software/license

export PATH=${INNOV_DIR}/bin:${QRC_DIR}/bin:${GENUS_DIR}/bin:${VOLTUS_TEMPUS_DIR}/bin:${LEC_DIR}/bin:${PATH}

#CALIBRE_HOME=/afs/ece.cmu.edu/support/mgc/mgc.release/cal_2022.2_aoi/aoi_cal_2022.2_38.20/;export CALIBRE_HOME
#MGC_HOME=$CALIBRE_HOME

# Native eq1
# export PDK_PATH=~/asap7/asap7_pdk_r1p7
# export ASIC_PATH=~/asap7/asap7sc7p5t_28 #asap7sc7p5t_28

# F2S container
export PDK_PATH=opt/asap7/asap7_pdk_r1p7
export ASIC_PATH=opt/asap7/asap7sc7p5t_28 #asap7sc7p5t_28