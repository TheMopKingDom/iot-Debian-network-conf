#!/bin/sh

#if [ "$(whoami)" != "root" ]
#then
	#echo "please enter root password"
	#read rootps
    #echo "$rootps" | sudo -s
    sudo -s
	cd /etc/wpa_supplicant
	touch wpa_supplicant.conf
	echo  "ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev" >> wpa_supplicant.conf
	echo  "country=TH" >> wpa_supplicant.conf
	echo  "network={" >> wpa_supplicant.conf
	echo  "ssid=\"$1\"" >> wpa_supplicant.conf
	echo  "psk=\"$2\"" >> wpa_supplicant.conf
	echo  "key_mgmt=WPA-PSK" >> wpa_supplicant.conf
	echo  "}" >> wpa_supplicant.conf
	exit
#else
#	echo "erro find"
#	exit 1
#fi

#PSwpa=$(pidof wpa_supplicant)
#kill $PSwpa
#wpa_supplicant -c /etc/wpa_supplicant/wpa_supplicant.conf -i wlan0 -B
