## VGA666 overlays

These files are a copy of the vga666 overlay found in the Raspberry Pi repository [vga666-overlay.dts](https://github.com/raspberrypi/linux/blob/rpi-4.1.y/arch/arm/boot/dts/overlays/vga666-overlay.dts), they have had the pins changed to match the different modes of the GPIO LCD mode as used by the VGA666 board and this analogue board.

information about compiling and editing them can be found on the [Raspberry Pi website](https://www.raspberrypi.org/documentation/configuration/device-tree.md)

to compile (in Rasbian) use the following steps, install the dtc-compiler

`sudo apt-get install device-tree-compiler`

then use the following command `-I dts` defines the source type `-O is the output type` then `-o output.dtb` is the output file you want to make and then the `source.dts` is the file you want to compile.

`dtc -I dts -O dtb -o output.dtb source.dts`
