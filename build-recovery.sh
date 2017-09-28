#!/bin/bash
echo -e "\033[01;32mGo to the command execution directory\033[0m "
cd ..
cd ..
cd ..
echo -e "\033[01;32mmake clean\033[0m"
make clean
echo -e "\033[01;32msource build/envsetup.sh[0m"
source build/envsetup.sh
echo -e "\033[01;32mlunch cm_nx591j-eng[0m"
lunch cm_nx591j-eng
echo -e "\033[01;32mmka recovery.img[0m"
mka recoveryimage
echo -e "\033[01;32mrecovery_signer boot.img...\033[0m"
java -jar device/nubia/nx591j/bootsignature/BootSignature.jar /recovery out/target/product/nx591j/recovery.img device/nubia/nx591j/bootsignature/verity.pk8 device/nubia/nx591j/bootsignature/verity.x509.der out/target/product/nx591j/recovery.img

