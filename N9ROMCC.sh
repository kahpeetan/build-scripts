#N9 ROM with ccache

cd ~/noobbuilds
source build/envsetup.sh
make clobber
lunch noobbuilds_n9-userdebug
export USE_CCACHE=1
make -j `getconf _NPROCESSORS_ONLN` otapackage
