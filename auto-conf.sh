#!/bin/sh

cd ~/etc
echo -e "##add new conf\\ninterface eth0\\nstatic ip_address=192.168.44.144/24" >> dhcpcd.conf
cd ~/etc/network
echo -e "##add new conf\\nauto lo\\niface lo inet loopback\\niface eth0 inet manual\\nallow-hotplug wlan0\\niface wlan0 inet manual\\n    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf" >> interfaces
cd ~/etc/wpa_supplicant
echo -e "##add new conf\\nupdate_config=1\\ncountry=TH\\nnetwork={\\nssid="wifiAP-name"\\npsk="wifiAP-password"\\nkey_mgmt=WPA-PSK\\n}" >> wpa_supplicant.conf