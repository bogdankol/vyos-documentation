��    Z      �     �      �  i   �  %   #  j   I  T   �  ]   		  &   g	  �   �	  �   Q
  =   D  D   �     �  �   �    d     ~  "   �     �  !   �  #   �          )     8     X  �   h     0  I   @  S   �  =   �  �     F   �       U   +  �   �  <   )  M  f  �   �  �   h  B   �  .   9  b   h  �   �     u  �   �  X  S  �   �  0   H  �   y  @   0     q  �   y  P   t  4   �     �  �        �     �     �  (   �       
   $  p   /     �  �   �     @  �   Z  �   -  a   �  p      T   �   �   �   �   �!  *   "     H"  	   X"  �   b"  *   #  9   :#  %   t#     �#     �#  :   �#  +   �#  �  *$    &  u   ''  �   �'  D   S(    �(     �)  �   �)  �   �*  i   v+  %   �+  j   ,  T   q,  ]   �,  &   $-  �   K-  �   .  =   /  D   ?/     �/  �   �/    !0     ;1  "   P1     s1  !   �1  #   �1     �1     �1     �1     2  �   %2     �2  I   �2  S   G3  =   �3  �   �3  F   �4     �4  U   �4  �   >5  <   �5  M  #6  �   q7  �   %8  B   �8  .   �8  b   %9  �   �9     2:  �   H:  X  ;  �   i<  0   =  �   6=  @   �=     .>  �   6>  P   1?  4   �?     �?  �   �?     L@     b@     �@  (   �@     �@  
   �@  p   �@     ]A  �   {A     �A  �   B  �   �B  a   oC  p   �C  T   BD  �   �D  �   TE  *   �E     F  	   F  �   F  *   �F  9   �F  %   1G     WG     pG  :   �G  +   �G  �  �G    �I  u   �J  �   ZK  D   L    UL     kM  �   �M     @             X              A   J          9   T      	       '   U       .   ?   *   R           O       8                   L      ,           5         <   H   3      Y   W   !          &              ;   #   :   2   
   7   N       S   M       (           K           I       6   /                     0                         Z   F      4       P      G   $   %       1   >      E   D                              -      )         C       "      Q   B   +   V      =    **NOTE**: be carefull while copying and pasting previous commands. Doble quotes may need to be corrected. **meta-data**: empty file (required). **network-config** file only has configuration that disables the automatic dhcp client on first interface. **network-config**: file that will indicate to avoid dhcp client on first interface. **user-data** file must start with ``#cloud-config`` and contains vyos-commands. For example: **user-data**: includes vyos-commands. A VyOS qcow image with cloud-init options is needed. This can be obtained using `vyos-vm-images`_ repo. After clonning the repo, edit the file **qemu.yml** and comment the **download-iso** role. A cloud-config document is written in YAML. The file must begin with ``#cloud-config`` line. The only supported top-level keys are ``vyos_config_commands`` and ``write_files``. The use of these keys is described in the following two sections. A single-quote symbol is not allowed inside command or value. All of these can be overridden using the configuration in user-data. Also, this lab considers: Before starting, please refer to cloud-init `network-config-docs`_ in order to know how to import user and network configurations. Cloud and virtualized instances of VyOS are initialized using the industry-standard cloud-init. Via cloud-init, the system performs tasks such as injecting SSH keys and configuring the network. In addition, the user can supply a custom configuration at the time of instance launch. Cloud-config modules Cloud-init `network-config-docs`_. Cloud-init on Proxmox Command Execution at Initial Boot Command for generating ``seed.iso`` Commands requirements: Config Sources Content of network-config file: Create seed.iso Create text files named user-data and meta-data. On linux-based systems, the mkisofs utility can be used to create the seed ISO. The following syntax will add these files to the ISO 9660 file system. Creating the VM DHCP on first Ethernet interface if no network configuration is provided. File generated with previous command: ``/tmp/vyos-1.3.0-cloud-init-10G-qemu.qcow2`` Finaly, file **meta-data** has no content, but it's required. For more information on the NoCloud data source, visit its `page <https://cloudinit.readthedocs.io/en/latest/reference/datasources/nocloud.html>`_ in the cloud-init documentation. From cli or GUI, power on VM, and after it boots, verify configuration Generate qcow image Here is an example cloud-config that appends configuration at the time of first boot. ISO files storage: ``local`` volume is used for ``.iso`` file storage. In this scenario ``local`` volume type is set to **directory**, abd attached to ``/var/lib/vz``. If command ends in a value, it must be inside single quotes. If no networking configuration is provided, then dhcp client is going to be enabled on first interface. Bare in mind that this configuration will be inyected at an OS level, so don't expect to find dhcp client configuration on vyos cli. Because of this behavior, in next example lab we will disable dhcp-client configuration on eth0. If you encounter problems, verify that the cloud-config document contains valid YAML. Online resources such as https://www.yamllint.com/ provide a simple tool for validating YAML. If you need to gather information from linux commands to configure VyOS, you can execute commands and then configure VyOS in the same script. In Proxmox server three files are going to be used for this setup: In VyOS, by default, enables only two modules: In this lab, all files are located in ``/tmp/``. So, before going on, lets move to that directory: In this lab, we are using 1.3.0 VyOS version and setting a disk of 10G. Download VyOS .iso file and save it as ``/tmp/vyos.iso``. Command used for generating qcow image: Initial Configuration Injecting configuration data is not limited to cloud platforms. Users can employ the NoCloud data source to inject user-data and meta-data on virtualization platforms such as VMware, Hyper-V and KVM. Major cloud providers offer a means of providing user-data at the time of instance launch. It can be provided as plain text or as base64-encoded text, depending on cloud provider. Also, it can be compressed using gzip, which makes sense with a long configuration commands list, because of the hard limit to ~16384 bytes for the whole user-data. Metadata - Metadata is sourced by the cloud platform or hypervisor. In some clouds, there is implemented as an HTTP endpoint at ``http://169.254.169.254``. Most important keys that needs to be considered: Network configuration - This config source informs the system about the network settings like IP addresses, routes, DNS. Available only in several cloud and virtualization platforms. Networking configurations shouldn't be passed in user-data file. NoCloud Note that the /opt/vyatta/etc/config is used instead of the /config/scripts directory referenced in the :ref:`command-scripting` section of the documentation because the /config/script directory isn't mounted when the ``write_files`` module executes. Notes for this particular example, that may need to be modified in other setups: Now, that file needs to be copied to proxmox server: On proxmox server: Once the three files were created, it's time to generate the ``seed.iso`` image, which needs to be mounted to the new VM as a cd. One command per line. Power on VM and verifications Prepare cloud-init files Proxmox IP address: **192.168.0.253/24** Proxmox `Cloud-init-Support`_. References Remove default dhcp client on first interface, and load other configuration during first boot, using cloud-init. SSH is configured on port 22. Storaged used: volume local, which is mounted on directory **/var/lib/vz**, and contains all type of content, including snippets. System Defaults/Fallbacks The commands list produced by the ``show configuration commands`` command on a VyOS router should comply with all the requirements, so it is easy to get a proper commands list by copying it from another router. The configuration specified in the cloud-config document overwrites default configuration values and values configured via Metadata. The easiest way to configure the system via user-data is the Cloud-config syntax described below. The following example sets the hostname based on the instance identifier obtained from the EC2 metadata service. The following example shows how to execute commands after the initial configuration. The key used to designate a VyOS configuration is ``vyos_config_commands``. What follows is VyOS configuration using the "set-style" syntax. Both "set" and "delete" commands are supported. The seed.iso file can be attached to the virtual machine. As an example, the method with KVM to attach the ISO as a CD drive follows. These are the VyOS defaults and fallbacks. Troubleshooting User-data User-data - User-data is specified by the user. This config source offers the ability to insert any CLI configuration commands into the configuration before the first boot. VM ID: in this example, VM ID used is 555. VM Resources: these parameters can be modified as needed. VM Storage: ``local`` volume is used. VyOS `cloud-init-docs`_. VyOS cloud-init VyOS configuration commands are defined in user-data file. VyOS support three types of config sources. VyOS supports the execution of operational commands and linux commands at initial boot. This is accomplished using ``write_files`` to certain files in the /opt/vyatta/etc/config/scripts directory. Commands specified in opt/vyatta/etc/config/scripts/vyos-preconfig-bootup.script are executed prior to configuration. The /opt/vyatta/etc/config/scripts/vyos-postconfig-bootup.script file contains commands to be executed after configuration. In both cases, commands are executed as the root user. While other methods exist, the most straightforward method for using the NoCloud data source is creating a seed ISO and attaching it to the virtual machine as a CD drive. The volume must be formatted as a vfat or ISO 9660 file system with the label "cidata" or "CIDATA". ``seed.iso`` was previously created in directory ``/tmp/``. It's necessary to move it to ``/var/lib/vz/template/iso`` ``vyos_userdata`` - the module accepts a list of CLI configuration commands in a ``vyos_config_commands`` section, which gives an easy way to configure the system during deployment. ``vyos``/``vyos`` credentials if no others specified by data source. ``write_files`` - this module allows to insert any files into the filesystem before the first boot, for example, pre-generated encryption keys, certificates, or even a whole ``config.boot`` file. The format is described in the cloudinit documentation `Cloud-init-write_files`_. cloud-config file format cloud-init logs to /var/log/cloud-init.log. This file can be helpful in determining why the configuration varies from what you expect. You can fetch the most important data filtering output for ``vyos`` keyword: MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Localazy (https://localazy.com)
Project-Id-Version: 
Language: en
Plural-Forms: nplurals=2; plural=(n==1) ? 0 : 1;
 **NOTE**: be carefull while copying and pasting previous commands. Doble quotes may need to be corrected. **meta-data**: empty file (required). **network-config** file only has configuration that disables the automatic dhcp client on first interface. **network-config**: file that will indicate to avoid dhcp client on first interface. **user-data** file must start with ``#cloud-config`` and contains vyos-commands. For example: **user-data**: includes vyos-commands. A VyOS qcow image with cloud-init options is needed. This can be obtained using `vyos-vm-images`_ repo. After clonning the repo, edit the file **qemu.yml** and comment the **download-iso** role. A cloud-config document is written in YAML. The file must begin with ``#cloud-config`` line. The only supported top-level keys are ``vyos_config_commands`` and ``write_files``. The use of these keys is described in the following two sections. A single-quote symbol is not allowed inside command or value. All of these can be overridden using the configuration in user-data. Also, this lab considers: Before starting, please refer to cloud-init `network-config-docs`_ in order to know how to import user and network configurations. Cloud and virtualized instances of VyOS are initialized using the industry-standard cloud-init. Via cloud-init, the system performs tasks such as injecting SSH keys and configuring the network. In addition, the user can supply a custom configuration at the time of instance launch. Cloud-config modules Cloud-init `network-config-docs`_. Cloud-init on Proxmox Command Execution at Initial Boot Command for generating ``seed.iso`` Commands requirements: Config Sources Content of network-config file: Create seed.iso Create text files named user-data and meta-data. On linux-based systems, the mkisofs utility can be used to create the seed ISO. The following syntax will add these files to the ISO 9660 file system. Creating the VM DHCP on first Ethernet interface if no network configuration is provided. File generated with previous command: ``/tmp/vyos-1.3.0-cloud-init-10G-qemu.qcow2`` Finaly, file **meta-data** has no content, but it's required. For more information on the NoCloud data source, visit its `page <https://cloudinit.readthedocs.io/en/latest/reference/datasources/nocloud.html>`_ in the cloud-init documentation. From cli or GUI, power on VM, and after it boots, verify configuration Generate qcow image Here is an example cloud-config that appends configuration at the time of first boot. ISO files storage: ``local`` volume is used for ``.iso`` file storage. In this scenario ``local`` volume type is set to **directory**, abd attached to ``/var/lib/vz``. If command ends in a value, it must be inside single quotes. If no networking configuration is provided, then dhcp client is going to be enabled on first interface. Bare in mind that this configuration will be inyected at an OS level, so don't expect to find dhcp client configuration on vyos cli. Because of this behavior, in next example lab we will disable dhcp-client configuration on eth0. If you encounter problems, verify that the cloud-config document contains valid YAML. Online resources such as https://www.yamllint.com/ provide a simple tool for validating YAML. If you need to gather information from linux commands to configure VyOS, you can execute commands and then configure VyOS in the same script. In Proxmox server three files are going to be used for this setup: In VyOS, by default, enables only two modules: In this lab, all files are located in ``/tmp/``. So, before going on, lets move to that directory: In this lab, we are using 1.3.0 VyOS version and setting a disk of 10G. Download VyOS .iso file and save it as ``/tmp/vyos.iso``. Command used for generating qcow image: Initial Configuration Injecting configuration data is not limited to cloud platforms. Users can employ the NoCloud data source to inject user-data and meta-data on virtualization platforms such as VMware, Hyper-V and KVM. Major cloud providers offer a means of providing user-data at the time of instance launch. It can be provided as plain text or as base64-encoded text, depending on cloud provider. Also, it can be compressed using gzip, which makes sense with a long configuration commands list, because of the hard limit to ~16384 bytes for the whole user-data. Metadata - Metadata is sourced by the cloud platform or hypervisor. In some clouds, there is implemented as an HTTP endpoint at ``http://169.254.169.254``. Most important keys that needs to be considered: Network configuration - This config source informs the system about the network settings like IP addresses, routes, DNS. Available only in several cloud and virtualization platforms. Networking configurations shouldn't be passed in user-data file. NoCloud Note that the /opt/vyatta/etc/config is used instead of the /config/scripts directory referenced in the :ref:`command-scripting` section of the documentation because the /config/script directory isn't mounted when the ``write_files`` module executes. Notes for this particular example, that may need to be modified in other setups: Now, that file needs to be copied to proxmox server: On proxmox server: Once the three files were created, it's time to generate the ``seed.iso`` image, which needs to be mounted to the new VM as a cd. One command per line. Power on VM and verifications Prepare cloud-init files Proxmox IP address: **192.168.0.253/24** Proxmox `Cloud-init-Support`_. References Remove default dhcp client on first interface, and load other configuration during first boot, using cloud-init. SSH is configured on port 22. Storaged used: volume local, which is mounted on directory **/var/lib/vz**, and contains all type of content, including snippets. System Defaults/Fallbacks The commands list produced by the ``show configuration commands`` command on a VyOS router should comply with all the requirements, so it is easy to get a proper commands list by copying it from another router. The configuration specified in the cloud-config document overwrites default configuration values and values configured via Metadata. The easiest way to configure the system via user-data is the Cloud-config syntax described below. The following example sets the hostname based on the instance identifier obtained from the EC2 metadata service. The following example shows how to execute commands after the initial configuration. The key used to designate a VyOS configuration is ``vyos_config_commands``. What follows is VyOS configuration using the "set-style" syntax. Both "set" and "delete" commands are supported. The seed.iso file can be attached to the virtual machine. As an example, the method with KVM to attach the ISO as a CD drive follows. These are the VyOS defaults and fallbacks. Troubleshooting User-data User-data - User-data is specified by the user. This config source offers the ability to insert any CLI configuration commands into the configuration before the first boot. VM ID: in this example, VM ID used is 555. VM Resources: these parameters can be modified as needed. VM Storage: ``local`` volume is used. VyOS `cloud-init-docs`_. VyOS cloud-init VyOS configuration commands are defined in user-data file. VyOS support three types of config sources. VyOS supports the execution of operational commands and linux commands at initial boot. This is accomplished using ``write_files`` to certain files in the /opt/vyatta/etc/config/scripts directory. Commands specified in opt/vyatta/etc/config/scripts/vyos-preconfig-bootup.script are executed prior to configuration. The /opt/vyatta/etc/config/scripts/vyos-postconfig-bootup.script file contains commands to be executed after configuration. In both cases, commands are executed as the root user. While other methods exist, the most straightforward method for using the NoCloud data source is creating a seed ISO and attaching it to the virtual machine as a CD drive. The volume must be formatted as a vfat or ISO 9660 file system with the label "cidata" or "CIDATA". ``seed.iso`` was previously created in directory ``/tmp/``. It's necessary to move it to ``/var/lib/vz/template/iso`` ``vyos_userdata`` - the module accepts a list of CLI configuration commands in a ``vyos_config_commands`` section, which gives an easy way to configure the system during deployment. ``vyos``/``vyos`` credentials if no others specified by data source. ``write_files`` - this module allows to insert any files into the filesystem before the first boot, for example, pre-generated encryption keys, certificates, or even a whole ``config.boot`` file. The format is described in the cloudinit documentation `Cloud-init-write_files`_. cloud-config file format cloud-init logs to /var/log/cloud-init.log. This file can be helpful in determining why the configuration varies from what you expect. You can fetch the most important data filtering output for ``vyos`` keyword: 