WS 300 PC-II Docker readout
===========================

# What is this about?
I am using a binary called `ws` that reads current data from a eQ-3 Entwicklung GmbH WS 300 PC II weather station via USB and prints a JSON object to STDOUT. Unfortunately, I neither have the sources, nor do I know where I got the binary from. However, I wanted to be able to use my WS 300 PC-II in future. Therefore, I have put everything in a Docker image so it should be usable on any x64 architecture machine.

It might work with other weather station products from eQ-3 Entwicklung GmbH as well.

If you are original author of this code, please let me know!

# Usage
Determine the proper USB device path:

`lsusb -d 1b1f:c006 | sed -e 's!^Bus \(...\) Device \(...\).*!/dev/bus/usb/\1/\2!'`

Run container (assuming the device is device 3 on bus 2):

`docker run --rm --name ws --device=/dev/bus/usb/002/003 bebef/ws300pc2:latest`

# Software used/copyright etc.
This software is based on other software, in particular:
- libc6
- libftdi
- libusb
- 'ws'

## License of this software
No liability, no warranty. Do whatever you want with it.

## License of software used by this software
See `txt` folder.
