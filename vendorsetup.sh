echo "Cloning Repos..."
echo "Cloning Common Device Tree..."
git clone https://github.com/IamCexary/device_oneplus_sm8350-common.git -b udc device/oneplus/sm8350-common
echo "Cloning Hardware Tree..."
git clone https://github.com/IamCexary/hardware_oplus.git -b udc hardware/oplus
echo "Cloning AtomX Kernel Source..."
git clone --depth=1 https://github.com/IamCexary/android_kernel_realme_sm8350.git -b uvite kernel/oneplus/sm8350
echo "Cloning Common Vendor Tree..."
git clone --depth=1 https://github.com/IamCexary/vendor_oneplus_sm8350-common.git -b udc vendor/oneplus/sm8350-common
echo "Cloning Vendor Tree..."
git clone --depth=1 https://github.com/IamCexary/vendor_realme_porsche.git -b udc vendor/realme/porsche
echo "Cloning OPlusExtras..."
git clone https://github.com/IamCexary/packages_apps_OPlusExtras.git packages/apps/OPlusExtras
echo "Cloning Viper4Android..."
git clone https://github.com/IamCexary/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX
echo "Cloning Firmware..."
git clone --depth=1 https://gitlab.com/kajirokasuna/proprietary_vendor_realme_firmware.git -b uvite-porsche vendor/realme/firmware
echo "Cloning Oneplus Camera..."
git clone --depth=1 https://gitlab.com/kajirokasuna/proprietary_vendor_oplus_camera.git -b topaz-porsche vendor/oplus/camera

# We wish to ship KernelSU with AtomX Kernel so lets set it up
echo "Setting Up KernelSU for AtomX Kernel..."
cd kernel/oneplus/sm8350 && curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash - && cd && cd evox
