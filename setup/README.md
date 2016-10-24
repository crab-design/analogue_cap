##Making it work

You can simply download `config.txt` in this directory and put it in your boot folder. Or you can edit `config.txt` on directly the Raspberry Pi.



###VGA
To use the VGA you need to add the file to /boot/overlays/

*If using Rasbian Wheezy or similar you need to copy `crab-vga-overlay.dtb` to the `/boot/overlays` folder
*If you are using Rasbian Jessie you need to copy `crab-vga.dtbo` to the `/boot/overlays/` folder

both files are the same, it is just the naming convention has changed

then the following line should be added to `/boot/config.txt`

```bash 
sudo nano /boot/config.txt
```
then add this line
```
# Setup to make the VGA work
dtoverlay=crab-vga
enable_dpi_lcd=1
dpi_output_format=6

# Makes the VGA the main interface
display_default_lcd=1

# Set resolution of VGA (numbers the the same as HDMI)
dpi_group=2
dpi_mode=16

# On RPi3 Bluetooth has to be disabled 
# for the VGA to work
dtoverlay=pi3-disable-bt
```

`dpi_group` and `dpi_mode` sets the resolution, it is the same setting as HDMI. 
see following link for info, [Raspberry Pi Config.txt](https://www.raspberrypi.org/documentation/configuration/config-txt.md)

###Audio
To make the audio work all you need to do is add the following line to config.txt
```
dtoverlay=pwm-2chan
```

###Composite Out

For composite add this to `/boot/config.txt` this sets the resolution. 
see following link for info, [Raspberry Pi Config.txt](https://www.raspberrypi.org/documentation/configuration/config-txt.md)

```
# Settings SDTV (composite)
sdtv_mode=2
sdtv_aspect=2

# Overscan settings
#overscan_left=16
#overscan_right=16
#overscan_top=16
#overscan_bottom=16
```
