Device configuration for Moto MAXX (Quark) To compile TWRP on omni source
===========================================

crrrent building on omni6.0 source using twrp 7.1 branch

	<remove-project path="bootable/recovery" name="android_bootable_recovery" remote="omnirom" revision="android-6.0" groups="pdk-cw-fs"/>
	<project path="bootable/recovery" name="android_bootable_recovery" remote="omnirom" revision="android-7.1" groups="pdk-cw-fs"/>

The Motorola Moto Maxx (codenamed _"quark"_) is a high-end smartphone from Motorola mobility.
It was announced on November 2014.

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 2.7 GHz Krait 450
Chipset | Qualcomm Snapdragon 805
GPU     | Adreno 420
Memory  | 3GB RAM
Shipped Android Version | 4.4.4
Storage | 64 GB
MicroSD | No
Battery | Non-removable Li-Po 3900 mAh battery
Display | 1440 x 2560 pixels, 5.2 inches (~565 ppi pixel density)
Camera  | 21 MP (5248 x 3936), autofocus, dual-LED flash


![MAXX](https://dl.dropboxusercontent.com/u/281742759/maxx/novo-moto-maxx-1.jpg "MAXX")

Tree ported from CM.

Copyright 2015 - The CyanogenMod Project
