��    t      �  �   \      �	  ;   �	     
  I   '
  e   q
  ;   �
  3     >   G  2   �  &   �  1   �  B     5   U  .   �  3   �  �   �     �     �     �     �     �     �     �       4   .     c  J   w  �  �  �   V  �        �  �   �     1  0   H  G   y     �     �     �     �          "     <     X     t  �   �  F     s   e  y   �     S  F   �  y        �     �     �     �  �   �  �   {       %   (  |   N  �   �  �   d  �   �  u   �            �     z   �  �   @  �   )  �   �     Z     j     z     �  /   �  �   �  f   �         
      =      �   V   �   �      �!  <   �!     �!  3   �!  3   "  3   O"  3   �"  U   �"  �   #     �#     �#  a   �#  �   1$  N   �$  q  %  A   }'  j  �'  ?   **  C  j*    �+  H   �-  �   .  G   �.     �.     �.     /     $/  �   )/     �/  (   �/  Z   �/  �   50  P   �0  �   &1  ;   2     =2  I   W2  e   �2  ;   3  3   C3  >   w3  2   �3  &   �3  1   4  B   B4  5   �4  .   �4  3   �4  �   5     �5     �5     �5     �5     	6     6     -6     A6  4   ^6     �6  J   �6  �  �6  �   �8  �   89     �9  �   �9     a:  0   x:  G   �:     �:     ;     ;     *;     >;     R;     l;     �;     �;  �   �;  F   N<  s   �<  y   	=     �=  F   >  y   J>     �>     �>     �>     ?  �   ?  �   �?     O@  %   X@  |   ~@  �   �@  �   �A  �   &B  u   �B     3C     AC  �   NC  z   �C  �   pD  �   YE  �   F     �F     �F     �F     �F  /   �F  �   �F  f   �G     0H  
   =H  =   HH  �   �H  �   I     �I  <   �I     	J  3   J  3   KJ  3   J  3   �J  U   �J  �   =K     �K     �K  a   �K  �   aL  N   �L  q  ;M  A   �O  j  �O  ?   ZR  C  �R    �S  H   �U  �   =V  G   �V     W     /W     BW     TW  �   YW     �W  (   �W  Z   
X  �   eX  P   Y     K      +                    f   .                   R   $       \      S   	   p   X   _   q       4         i           o       9   ;   ^   D   s       h   U           =       t   I   3      P   V       8         ]               B   L       j       <   5   H   A   N      2      /   `      E           n      6   c               %   #   '   (                 "   )       ?   e             Y   Q   >   :         b   -           7   C   O   J   1   [          F   g              *   &   ,   T   Z   @                  l   k   !      r   d          W      a       0              
   M   G   m       1x Crucial CT4G4DFS824A (4GB DDR4 RAM 2400 MT/s, PC4-19200) 1x Kingston SUV500MS/120G 1x SanDisk Ultra Fit 32GB (USB-A 3.0 SDCZ43-032G-G46 mass storage for OS) 1x Supermicro A2SDi-2C-HLN4F (Intel Atom C3338, 2C/2T, 4MB cache, Quad LAN with Intel C3000 SoC 1GbE) 1x Supermicro CSE-505-203B (19" 1U chassis, inkl. 200W PSU) 1x Supermicro MCP-120-00063-0N (Riser Card Bracket) 1x Supermicro MCP-260-00085-0B (I/O Shield for A2SDi-2C-HLN4F) 1x Supermicro MCP-320-81302-0B (optional FAN tray) 1x Supermicro RSC-RR1U-E8 (Riser Card) 1x VARIA Group Item 326745 19" dual rack for APU4 1x apu4c4 = 4 i211AT LAN / AMD GX-412TC CPU / 4 GB DRAM / dual SIM 2 miniPCI express (one with SIM socket for 3G modem). 4 GB DDR3-1333 DRAM, with optional ECC support 4 Gigabit Ethernet channels using Intel i211AT NICs AMD Embedded G series GX-412TC, 1 GHz quad Jaguar core with 64 bit and AES-NI support, 32K data + 32K instruction cache per core, shared 2MB L2 cache. APU4 custom VyOS powder coat APU4 desktop back APU4 desktop closed APU4 rack closed APU4 rack front APU4 rack module #1 APU4 rack module #2 APU4 rack module #3 with PSU About 6 to 10W of 12V DC power depending on CPU load Acrosser AND-J190N1 Advanced > Serial Port Console Redirection > Console Redirection Settings: An external RS232 serial port is available, internally a GPIO header as well. It does have Realtek based audio on board for some reason, but you can disable that. Booting works on both USB2 and USB3 ports. Switching between serial BIOS mode and HDMI BIOS mode depends on what is connected at startup; it goes into serial mode if you disconnect HDMI and plug in serial, in all other cases it's HDMI mode. As the APU board itself still used a serial setting of 115200 8N1 it is strongly recommended that you change the VyOS serial interface settings after your first successful boot. As this platform seems to be quite common in terms of noise, cost, power and performance it makes sense to write a small installation manual. BIOS Settings: Begin rapidly pressing delete on the keyboard. The boot prompt is very quick, but with a few tries you should be able to get into the BIOS. Bits per second : 9600 Boot to the VyOS installer and install as usual. Both device types operate without any moving parts and emit zero noise. CSE-505-203B Back CSE-505-203B Front CSE-505-203B Open 1 CSE-505-203B Open 2 CSE-505-203B Open 3 CSE-505-203B w/ 10GE Open CSE-505-203B w/ 10GE Open 1 CSE-505-203B w/ 10GE Open 2 CSE-505-203B w/ 10GE Open 3 Chipset > South Bridge > USB Configuration: set XHCI to Disabled and USB 2.0 (EHCI) to Enabled. Without doing this, the USB drive won't boot. Compex WLE900VX mini-PCIe WiFi module, only supported in mPCIe slot 1. Connect serial port to a PC through null modem cable (RXD / TXD crossed over). Set terminal emulator to 115200 8N1. Connect to serial (115200bps). Power on the appliance and press Del in the console when requested to enter BIOS settings. Create a VyOS bootable USB key. I used the 64-bit ISO (VyOS 1.1.7) and `LinuxLive USB Creator <http://www.linuxliveusb.com/>`_. Create a bootable USB pendrive using e.g. Rufus_ on a Windows machine. Depending on the VyOS versions you intend to install there is a difference in the serial port settings (:vytask:`T1327`). Desktop / Bench Top Disable XHCI Enable USB 2.0 (EHCI) Support Extension Modules First thing you want to do is getting a more user friendly console to configure BIOS. Default VT100 brings a lot of issues. Configure VT100+ instead. For practical issues change speed from 115200 to 9600. 9600 is the default speed at which both linux kernel and VyOS will reconfigure the serial port when loading. Hardware Huawei ME909u-521 miniPCIe card (LTE) I believe this is actually the same hardware as the Protectli. I purchased it in June 2018. It came pre-loaded with pfSense. I connected the key to one black USB port on the back and powered on. The first VyOS screen has some readability issues. Press :kbd:`Enter` to continue. I opted to get one of the new Intel Atom C3000 CPUs to spawn VyOS on it. Running VyOS on an UEFI only device is supported as of VyOS release 1.2. I'm not sure if it helps the process but I changed default option to live-serial (line “default xxxx”) on the USB key under syslinux/syslinux.cfg. If you want to get additional ethernet ports or even 10GE connectivity the following optional parts will be required: Install VyOS: Installation Installing the rolling release on an APU2 board does not require any change on the serial console from your host side as :vytask:`T1327` was successfully implemented. Intel Corporation AX200 mini-PCIe WiFi module, only supported in mPCIe slot 1. (see :ref:`wireless-interface-intel-ax200`) Latest VyOS rolling releases boot without any problem on this board. You also receive a nice IPMI interface realized with an ASPEED AST2400 BMC (no information about `OpenBMC <https://www.openbmc.org/>`_ so far on this motherboard). Now boot from the ``USB MSC Drive Generic Flash Disk 8.07`` media by pressing ``2``, the VyOS boot menu will appear, just wait 10 seconds or press ``Enter`` to continue. Once you ``commit`` the above changes access to the serial interface is lost until you set your terminal emulator to 115200 8N1 again. Optional (10GE) PC Engines APU4 Partaker i5 Pictures Plug in VGA, power, USB keyboard, and USB drive Power supply is a 12VDC barrel jack, and included switching power supply, which is why SATA power regulation is on-board. Internally it has a NUC-board-style on-board 12V input header as well, the molex locking style. Press "SW" button on the front (this is the power button; I don't know what "SW" is supposed to mean). Qotom Q355G4 Rack Mount Reboot into BIOS, Chipset > South Bridge > USB Configuration: Refer to :ref:`wireless-interface` for additional information, below listed modules have been tested successfully on this Hardware platform: Refer to :ref:`wwan-interface` for additional information, below listed modules have been tested successfully on this Hardware platform using VyOS 1.3 (equuleus): Running on Bare Metal Save, reboot and change serial speed to 9600 on your client. Shopping Cart Sierra Wireless AirPrime MC7304 miniPCIe card (LTE) Sierra Wireless AirPrime MC7430 miniPCIe card (LTE) Sierra Wireless AirPrime MC7455 miniPCIe card (LTE) Sierra Wireless AirPrime MC7710 miniPCIe card (LTE) Simply proceed with a regular image installation as described in :ref:`installation`. Some options have to be changed for VyOS to boot correctly. With XHCI enabled the installer can’t access the USB key. Enable EHCI instead. Supermicro A2SDi (Atom C3000) Terminal Type : VT100+ The 19" enclosure can accommodate up to two APU4 boards - there is a single and dual front cover. The Kernel will now spin up using a different console setting. Set terminal emulator to 9600 8N1 and after a while your console will show: The board can be powered via 12V from the front or via a 5V onboard connector. The chassis is a U-shaped alu extrusion with removable I/O plates and removable bottom plate. Cooling is completely passive with a heatsink on the SoC with internal and external fins, a flat interface surface, thermal pad on top of that, which then directly attaches to the chassis, which has fins as well. It comes with mounting hardware and rubber feet, so you could place it like a desktop model or mount it on a VESA mount, or even wall mount it with the provided mounting plate. The closing plate doubles as internal 2.5" mounting place for an HDD or SSD, and comes supplied with a small SATA cable and SATA power cable. The image will be loaded and the last lines you will get will be: The install on this Q355G4 box is pretty much plug and play. The port numbering the OS does might differ from the labels on the outside, but the UEFI firmware has a port blink test built in with MAC addresses so you can very quickly identify which is which. MAC labels are on the inside as well, and this test can be done from VyOS or plain Linux too. Default settings in the UEFI will make it boot, but depending on your installation wishes (i.e. storage type, boot type, console type) you might want to adjust them. This Qotom company seems to be the real OEM/ODM for many other relabelling companies like Protectli. Then VyOS should boot and you can perform the ``install image`` There are WDT options and auto-boot on power enable, which is great for remote setups. Firmware is reasonably secure (no backdoors found, BootGuard is enabled in enforcement mode, which is good but also means no coreboot option), yet has most options available to configure (so it's not locked out like most firmwares are). There are a number of other options, but they all seem to be close to Intel reference designs, with added features like more serial ports, more network interfaces and the likes. Because they don't deviate too much from standard designs all the hardware is well-supported by mainline. It accepts one LPDDR3 SO-DIMM, but chances are that if you need more than that, you'll also want something even beefier than an i5. There are options for antenna holes, and SIM slots, so you could in theory add an LTE/Cell modem (not tested so far). This guide was developed using an APU4C4 board with the following specs: This microbox network appliance was build to create OpenVPN bridges. It can saturate a 100Mbps link. It is a small (serial console only) PC with 6 Gb LAN Use the following command to adjust the :ref:`serial-console` settings: VyOS 1.2 (crux) VyOS 1.2 (rolling) VyOS custom print WWAN Warning the interface labels on my device are backwards; the left-most "LAN4" port is eth0 and the right-most "LAN1" port is eth3. WiFi Write VyOS ISO to USB drive of some sort You can now proceed with a regular image installation as described in :ref:`installation`. You may have to add your own RAM and HDD/SSD. There is no VGA connector. But Acrosser provides a DB25 adapter for the VGA header on the motherboard (not used). `Manufacturer product page <http://www.inctel.com.cn/product/detail/338.html>`_. MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Localazy (https://localazy.com)
Project-Id-Version: 
Language: en
Plural-Forms: nplurals=2; plural=(n==1) ? 0 : 1;
 1x Crucial CT4G4DFS824A (4GB DDR4 RAM 2400 MT/s, PC4-19200) 1x Kingston SUV500MS/120G 1x SanDisk Ultra Fit 32GB (USB-A 3.0 SDCZ43-032G-G46 mass storage for OS) 1x Supermicro A2SDi-2C-HLN4F (Intel Atom C3338, 2C/2T, 4MB cache, Quad LAN with Intel C3000 SoC 1GbE) 1x Supermicro CSE-505-203B (19" 1U chassis, inkl. 200W PSU) 1x Supermicro MCP-120-00063-0N (Riser Card Bracket) 1x Supermicro MCP-260-00085-0B (I/O Shield for A2SDi-2C-HLN4F) 1x Supermicro MCP-320-81302-0B (optional FAN tray) 1x Supermicro RSC-RR1U-E8 (Riser Card) 1x VARIA Group Item 326745 19" dual rack for APU4 1x apu4c4 = 4 i211AT LAN / AMD GX-412TC CPU / 4 GB DRAM / dual SIM 2 miniPCI express (one with SIM socket for 3G modem). 4 GB DDR3-1333 DRAM, with optional ECC support 4 Gigabit Ethernet channels using Intel i211AT NICs AMD Embedded G series GX-412TC, 1 GHz quad Jaguar core with 64 bit and AES-NI support, 32K data + 32K instruction cache per core, shared 2MB L2 cache. APU4 custom VyOS powder coat APU4 desktop back APU4 desktop closed APU4 rack closed APU4 rack front APU4 rack module #1 APU4 rack module #2 APU4 rack module #3 with PSU About 6 to 10W of 12V DC power depending on CPU load Acrosser AND-J190N1 Advanced > Serial Port Console Redirection > Console Redirection Settings: An external RS232 serial port is available, internally a GPIO header as well. It does have Realtek based audio on board for some reason, but you can disable that. Booting works on both USB2 and USB3 ports. Switching between serial BIOS mode and HDMI BIOS mode depends on what is connected at startup; it goes into serial mode if you disconnect HDMI and plug in serial, in all other cases it's HDMI mode. As the APU board itself still used a serial setting of 115200 8N1 it is strongly recommended that you change the VyOS serial interface settings after your first successful boot. As this platform seems to be quite common in terms of noise, cost, power and performance it makes sense to write a small installation manual. BIOS Settings: Begin rapidly pressing delete on the keyboard. The boot prompt is very quick, but with a few tries you should be able to get into the BIOS. Bits per second : 9600 Boot to the VyOS installer and install as usual. Both device types operate without any moving parts and emit zero noise. CSE-505-203B Back CSE-505-203B Front CSE-505-203B Open 1 CSE-505-203B Open 2 CSE-505-203B Open 3 CSE-505-203B w/ 10GE Open CSE-505-203B w/ 10GE Open 1 CSE-505-203B w/ 10GE Open 2 CSE-505-203B w/ 10GE Open 3 Chipset > South Bridge > USB Configuration: set XHCI to Disabled and USB 2.0 (EHCI) to Enabled. Without doing this, the USB drive won't boot. Compex WLE900VX mini-PCIe WiFi module, only supported in mPCIe slot 1. Connect serial port to a PC through null modem cable (RXD / TXD crossed over). Set terminal emulator to 115200 8N1. Connect to serial (115200bps). Power on the appliance and press Del in the console when requested to enter BIOS settings. Create a VyOS bootable USB key. I used the 64-bit ISO (VyOS 1.1.7) and `LinuxLive USB Creator <http://www.linuxliveusb.com/>`_. Create a bootable USB pendrive using e.g. Rufus_ on a Windows machine. Depending on the VyOS versions you intend to install there is a difference in the serial port settings (:vytask:`T1327`). Desktop / Bench Top Disable XHCI Enable USB 2.0 (EHCI) Support Extension Modules First thing you want to do is getting a more user friendly console to configure BIOS. Default VT100 brings a lot of issues. Configure VT100+ instead. For practical issues change speed from 115200 to 9600. 9600 is the default speed at which both linux kernel and VyOS will reconfigure the serial port when loading. Hardware Huawei ME909u-521 miniPCIe card (LTE) I believe this is actually the same hardware as the Protectli. I purchased it in June 2018. It came pre-loaded with pfSense. I connected the key to one black USB port on the back and powered on. The first VyOS screen has some readability issues. Press :kbd:`Enter` to continue. I opted to get one of the new Intel Atom C3000 CPUs to spawn VyOS on it. Running VyOS on an UEFI only device is supported as of VyOS release 1.2. I'm not sure if it helps the process but I changed default option to live-serial (line “default xxxx”) on the USB key under syslinux/syslinux.cfg. If you want to get additional ethernet ports or even 10GE connectivity the following optional parts will be required: Install VyOS: Installation Installing the rolling release on an APU2 board does not require any change on the serial console from your host side as :vytask:`T1327` was successfully implemented. Intel Corporation AX200 mini-PCIe WiFi module, only supported in mPCIe slot 1. (see :ref:`wireless-interface-intel-ax200`) Latest VyOS rolling releases boot without any problem on this board. You also receive a nice IPMI interface realized with an ASPEED AST2400 BMC (no information about `OpenBMC <https://www.openbmc.org/>`_ so far on this motherboard). Now boot from the ``USB MSC Drive Generic Flash Disk 8.07`` media by pressing ``2``, the VyOS boot menu will appear, just wait 10 seconds or press ``Enter`` to continue. Once you ``commit`` the above changes access to the serial interface is lost until you set your terminal emulator to 115200 8N1 again. Optional (10GE) PC Engines APU4 Partaker i5 Pictures Plug in VGA, power, USB keyboard, and USB drive Power supply is a 12VDC barrel jack, and included switching power supply, which is why SATA power regulation is on-board. Internally it has a NUC-board-style on-board 12V input header as well, the molex locking style. Press "SW" button on the front (this is the power button; I don't know what "SW" is supposed to mean). Qotom Q355G4 Rack Mount Reboot into BIOS, Chipset > South Bridge > USB Configuration: Refer to :ref:`wireless-interface` for additional information, below listed modules have been tested successfully on this Hardware platform: Refer to :ref:`wwan-interface` for additional information, below listed modules have been tested successfully on this Hardware platform using VyOS 1.3 (equuleus): Running on Bare Metal Save, reboot and change serial speed to 9600 on your client. Shopping Cart Sierra Wireless AirPrime MC7304 miniPCIe card (LTE) Sierra Wireless AirPrime MC7430 miniPCIe card (LTE) Sierra Wireless AirPrime MC7455 miniPCIe card (LTE) Sierra Wireless AirPrime MC7710 miniPCIe card (LTE) Simply proceed with a regular image installation as described in :ref:`installation`. Some options have to be changed for VyOS to boot correctly. With XHCI enabled the installer can’t access the USB key. Enable EHCI instead. Supermicro A2SDi (Atom C3000) Terminal Type : VT100+ The 19" enclosure can accommodate up to two APU4 boards - there is a single and dual front cover. The Kernel will now spin up using a different console setting. Set terminal emulator to 9600 8N1 and after a while your console will show: The board can be powered via 12V from the front or via a 5V onboard connector. The chassis is a U-shaped alu extrusion with removable I/O plates and removable bottom plate. Cooling is completely passive with a heatsink on the SoC with internal and external fins, a flat interface surface, thermal pad on top of that, which then directly attaches to the chassis, which has fins as well. It comes with mounting hardware and rubber feet, so you could place it like a desktop model or mount it on a VESA mount, or even wall mount it with the provided mounting plate. The closing plate doubles as internal 2.5" mounting place for an HDD or SSD, and comes supplied with a small SATA cable and SATA power cable. The image will be loaded and the last lines you will get will be: The install on this Q355G4 box is pretty much plug and play. The port numbering the OS does might differ from the labels on the outside, but the UEFI firmware has a port blink test built in with MAC addresses so you can very quickly identify which is which. MAC labels are on the inside as well, and this test can be done from VyOS or plain Linux too. Default settings in the UEFI will make it boot, but depending on your installation wishes (i.e. storage type, boot type, console type) you might want to adjust them. This Qotom company seems to be the real OEM/ODM for many other relabelling companies like Protectli. Then VyOS should boot and you can perform the ``install image`` There are WDT options and auto-boot on power enable, which is great for remote setups. Firmware is reasonably secure (no backdoors found, BootGuard is enabled in enforcement mode, which is good but also means no coreboot option), yet has most options available to configure (so it's not locked out like most firmwares are). There are a number of other options, but they all seem to be close to Intel reference designs, with added features like more serial ports, more network interfaces and the likes. Because they don't deviate too much from standard designs all the hardware is well-supported by mainline. It accepts one LPDDR3 SO-DIMM, but chances are that if you need more than that, you'll also want something even beefier than an i5. There are options for antenna holes, and SIM slots, so you could in theory add an LTE/Cell modem (not tested so far). This guide was developed using an APU4C4 board with the following specs: This microbox network appliance was build to create OpenVPN bridges. It can saturate a 100Mbps link. It is a small (serial console only) PC with 6 Gb LAN Use the following command to adjust the :ref:`serial-console` settings: VyOS 1.2 (crux) VyOS 1.2 (rolling) VyOS custom print WWAN Warning the interface labels on my device are backwards; the left-most "LAN4" port is eth0 and the right-most "LAN1" port is eth3. WiFi Write VyOS ISO to USB drive of some sort You can now proceed with a regular image installation as described in :ref:`installation`. You may have to add your own RAM and HDD/SSD. There is no VGA connector. But Acrosser provides a DB25 adapter for the VGA header on the motherboard (not used). `Manufacturer product page <http://www.inctel.com.cn/product/detail/338.html>`_. 