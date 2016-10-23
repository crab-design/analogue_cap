##Making it work

###VGA
To use the VGA you need to add the file to /boot/overlays/

*If using Rasbian Wheezy or similar you need to copy crab-vga-overlay.dtb to the /boot/overlays folder
*If you are using Rasbian Jessie you need to copy crab-vga.dtbo to the /boot/overlays/ folder

both files are the same, it is just the naming convention has changed

then the following line should be added to /boot/config.txt

 sudo nano /boot/config.txt

then add this line

 # Setup to make the VGA work
 dtoverlay=crab-vga
 enable_dpi_lcd=1
 dpi_output_format=6

 # Makes the VGA the main interface
 display_default_lcd=1

 # Set resolution of VGA (numbers the the same as HDMI)
 dpi_group=2
 dpi_mode=16

