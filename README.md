##What is it?

The analogue cap was designed in response to the release of the raspberry pi zero. For a low cost it helps to break out the analogue outputs from the zero. The analogue ports it provides are stereo audio, composite and VGA. All connectors are aligned to the same edge as the Zero's existing connectors. The board is ideal if you want to utilize a computer monitor, especially if it has built in speakers like many 'multimedia' TFT screens that now cost very little second hand.

Excluding the composite output it will also work on any Raspberry Pi that has the 40 pin GPIO header [ Raspberry Pi A/B+ and the Raspberry Pi B2 ] It
It is a kit

To make it as cheap as possible and easy to adapt for different purposes it is a kit / bare PCB that uses only through-hole components. Due to a lack of space all components are folded this may make it a little fiddly to construct if you have less experience but it is not too hard.

What this means though is that you can choose which way up the cap is mounted, if you what the VGA or not and if you are building into an enclosure the pads can be directly soldered.

the BOM is as follows

    1 x VGA socket
    1 x RCA phono
    1 x 3.5mm Socket
    1 x 40 way socket
    1 x 4 way socket
    1 x PCB
    4 x diodes
    24 x Resistors
    4 x Capacitors

##Enabling the outputs

Due to space and cost the cap does not have auto recognition EEPROM as defined by the HAT specification. It has to be set up by editing the config.txt and adding files to the /boot/ partition.

For VGA it uses Gert van loo's VGA666 hack which uses a passive resistor network to perform the Digital to Analogue conversion. The pins it uses are mapped differently (mode 6 instead of 5) to allow for the audio to also be broken out of the GPIO header. To activate VGA an 'overlay' has to be added to the configuration files of the boot partition. These will be provided in the Github repository.

Analogue audio is the same as the circuit on the Raspberry Pi B+ schematic, but instead the output comes from the GPIO. To activate another 'overlay' is used that comes with the default Rasbian distribution (pwm-2chan-overlay) If this and the VGA is activated only 4 GPIO pins will remain.

The composite is simply an extension of the new breakout pins next to the the Zero's GPIO header, it is connected by its own socket when the cap is pushed on.

The parts activated are up to the user by simply disabling and enabling parts in the config.txt file.

Thankyou for looking, I hope someone will find it useful especially those with lots of old VGA screens hanging around! 
