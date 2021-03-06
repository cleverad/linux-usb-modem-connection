#!/bin/bash

# Changes these vendor id & product id with values displayed from running `lsusb` command, after you've plugged in your USB modem.
USB_MODEM_VENDOR_ID=05c6
USB_MODEM_DEFAULT_PRODUCT_ID=f000

#usb-modeswitch-data can be downloaded from this url: 
# http://www.draisberghof.de/usb_modeswitch/

# define the path of `usb_modeswitch_data` directory
# Adjust it if necessary
usb_modeswitch_data_path=/home/pi/usb-modeswitch-data

sudo usb_modeswitch -W -c $usb_modeswitch_data_path/usb_modeswitch.d/$USB_MODEM_VENDOR_ID\:$USB_MODEM_DEFAULT_PRODUCT_ID -v $USB_MODEM_VENDOR_ID -p $USB_MODEM_DEFAULT_PRODUCT_ID
