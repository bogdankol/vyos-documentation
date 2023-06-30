��    Q      �  m   ,      �  !   �  �    �   �	  (  
     A     P     o  �   }  �        �  X   �  1       K  �  g     #     +  �   4  �   �  0  �  
               �   -  E   �  V    �   v  g   :  �   �  _   @  a   �  %     �   (  S        c  	   s     }     �  &   �     �  �   �  B   ^  0   �  !  �  S  �  �   H  �   �  `   x  d   �  g   >   $   �   �   �   �   �!  m   �"  q   #  c   v#  �   �#  *   [$  Z   �$    �$  �   �%  Q   �&  8  ''  �   `(  x   :)  y   �)  �   -*  �   )+  �   �+  �   �,     O-  �   \-  �   �-  7   �.  �   �.  �   �/  q   "0  ?   �0     �0  �   �0  �   �1  �   E2  !    3  �  B3  �   �5  (  W6     �7     �7     �7  �   �7  �   Q8     �8  X   �8  1   X9    �9  �  �:     b<     j<  �   s<  �   3=  0  >  
   E?     P?     U?  �   l?  E   @  V  ^@  �   �B  g   yC  �   �C  _   D  a   �D  %   AE  �   gE  S   NF     �F  	   �F     �F     �F  &   �F     �F  �   G  B   �G  0   �G  !  H  S  3I  �   �J  �   5K  `   �K  d   L  g   }L  $   �L  �   
M  �   �M  m   �N  q   CO  c   �O  �   P  *   �P  Z   �P     Q  �   8R  Q   S  8  fS  �   �T  x   yU  y   �U  �   lV  �   hW  �    X  �   �X     �Y  �   �Y  �   =Z  7   �Z  �   [  �   �[  q   a\  ?   �\     ]  �   1]  �   �]               G   O   ,             <         &   	      6      2           /       P          F       @                 N   #                 ;   
       )   5   E                    D      !   9               *                  ?   0   .          B   1   (   Q   '      -   H                        +   4   M   L   I   "       C          $            %              J   :   >       =   A   7   8   K   3    **DHCPv6 Prefix Delegation (PD)** :abbr:`PPPoE (Point-to-Point Protocol over Ethernet)` is a network protocol for encapsulating PPP frames inside Ethernet frames. It appeared in 1999, in the context of the boom of DSL as the solution for tunneling packets over the DSL connection to the :abbr:`ISPs (Internet Service Providers)` IP network, and from there to the rest of the Internet. A 2005 networking book noted that "Most DSL providers use PPPoE, which provides authentication, encryption, and compression." Typical use of PPPoE involves leveraging the PPP facilities for authenticating the user with a username and password, predominately via the PAP protocol and less often via CHAP. A default route is automatically installed once the interface is up. To change this behavior use the ``no-default-route`` CLI option. As Internet wide PMTU discovery rarely works, we sometimes need to clamp our TCP MSS value to a specific value. This is a field in the TCP options part of a SYN packet. By setting the MSS value, you are telling the remote side unequivocally 'do not try to send me packets bigger than this value'. Business Users Common interface configuration Configuration Configure :abbr:`MTU (Maximum Transmission Unit)` on given `<interface>`. It is the size (in bytes) of the largest ethernet frame sent on this link. Configure interface-specific Host/Router behaviour. If set, the interface will switch to host mode and IPv6 forwarding will be disabled on this interface. Connect/Disconnect Disable given `<interface>`. It will be placed in administratively down (``A/D``) state. Displays queue information for a PPPoE interface. Enable policy for source validation by reversed path, as specified in :rfc:`3704`. Current recommended practice in :rfc:`3704` is to enable strict mode to prevent IP spoofing from DDos attacks. If using asymmetric routing or other complicated routing, then loose mode is recommended. Enabled on-demand PPPoE connections bring up the link only when traffic needs to pass this link.  If the link fails for any reason, the link is brought back up automatically once traffic passes the interface again. If you configure an on-demand PPPoE connection, you must also configure the idle timeout period, after which an idle PPPoE link will be disconnected. A non-zero idle timeout will never disconnect the link after it first came up. Example Example: Example: Delegate a /64 prefix to interface eth8 which will use a local address on this router of ``<prefix>::ffff``, as the address 65534 will correspond to ``ffff`` in hexadecimal notation. Example: If ID is 1 and the client is delegated an IPv6 prefix 2001:db8:ffff::/48, dhcp6c will combine the two values into a single IPv6 prefix, 2001:db8:ffff:1::/64, and will configure the prefix on the specified interface. For a simple home network using just the ISP's equipment, this is usually desirable. But if you want to run VyOS as your firewall and router, this will result in having a double NAT and firewall setup. This results in a few extra layers of complexity, particularly if you use some NAT or tunnel features. Home Users IPv6 IPv6 DHCPv6-PD Example If this parameter is not set or 0, an on-demand link will not be taken down when it is idle and after the initial establishment of the connection. It will stay up forever. If this parameter is not set, the default holdoff time is 30 seconds. In order to have full control and make use of multiple static public IP addresses, your VyOS will have to initiate the PPPoE connection and control it. In order for this method to work, you will have to figure out how to make your DSL Modem/Router switch into a Bridged Mode so it only acts as a DSL Transceiver device to connect between the Ethernet link of your VyOS and the phone cable. Once your DSL Transceiver is in Bridge Mode, you should get no IP address from it. Please make sure you connect to the Ethernet Port 1 if your DSL Transceiver has a switch, as some of them only work this way. In this method, the DSL Modem/Router connects to the ISP for you with your credentials preprogrammed into the device. This gives you an :rfc:`1918` address, such as ``192.168.1.0/24`` by default. Instead of a numerical MSS value `clamp-mss-to-pmtu` can be used to automatically set the proper value. It will be combined with the delegated prefix and the sla-id to form a complete interface address. The default is to use the EUI-64 address of the interface. MSS value = MTU - 20 (IP header) - 20 (TCP header), resulting in 1452 bytes on a 1492 byte MTU. MSS value = MTU - 40 (IPv6 header) - 20 (TCP header), resulting in 1432 bytes on a 1492 byte MTU. No VLAN tagging required by your ISP. Once you have an Ethernet device connected, i.e. `eth0`, then you can configure it to open the PPPoE session for you and your DSL Transceiver (Modem/Router) just acts to translate your messages in a way that vDSL/aDSL understands. Only request an address from the PPPoE server but do not install any default route. Operating Modes Operation PPPoE PPPoE options Place interface in given VRF instance. Requirements: Set a human readable, descriptive alias for this connection. Alias is used by e.g. the :opcmd:`show interfaces` command or SNMP based monitoring tools. Set the distance for the default gateway sent by the PPPoE server. Show detailed information on given `<interface>` Some ISPs by default only delegate a /64 prefix. To request for a specific prefix size use this option to request for a bigger delegation for this pd `<id>`. This value is in the range from 32 - 64 so you could request up to a /32 prefix (if your ISP allows this) down to a /64 delegation. Some recent ISPs require you to build the PPPoE connection through a VLAN interface. One of those ISPs is e.g. Deutsche Telekom in Germany. VyOS can easily create a PPPoE session through an encapsulated VLAN interface. The following configuration will run your PPPoE connection through VLAN7 which is the default VLAN for Deutsche Telekom: Specify the identifier value of the site-level aggregator (SLA) on the interface. ID must be a decimal number greater then 0 which fits in the length of SLA IDs (see below). Specify the interface address used locally on the interface where the prefix has been delegated to. ID must be a decimal integer. Syntax has changed from VyOS 1.2 (crux) and it will be automatically migrated during an upgrade. Test connecting given connection-oriented interface. `<interface>` can be ``pppoe0`` as the example. Test disconnecting given connection-oriented interface. `<interface>` can be ``pppoe0`` as the example. The default value corresponds to 64. The following configuration will assign a /64 prefix out of a /56 delegation to eth0. The IPv6 address assigned to eth0 will be <prefix>::ffff/64. If you do not know the prefix size delegated to you, start with sla-len 0. The largest MTU size you can use with DSL is 1492 due to PPPoE overhead. If you are switching from a DHCP based ISP like cable then be aware that things like VPN links may need to have their MTU sizes adjusted to work within this limit. There is an entire chapter about how to configure a :ref:`vrf`, please check this for additional information. This command allows you to select a specific access concentrator when you know the access concentrators `<name>`. This command got added in VyOS 1.4 and inverts the logic from the old ``default-route`` CLI option. This command was introduced in VyOS 1.4 - it was previously called: ``set firewall options interface <name> adjust-mss <value>`` To request a /56 prefix from your ISP use: Use this command to enable acquisition of IPv6 address using stateless autoconfig (SLAAC). Use this command to instruct the system to establish a PPPoE connection automatically once traffic passes through the interface. A disabled on-demand connection is established at boot time and remains up. If the link fails for any reason, the link is brought back up immediately. Use this command to link the PPPoE connection to a physical interface. Each PPPoE connection must be established over a physical interface. Interfaces can be regular Ethernet interfaces, VIFs or bonding interfaces/VIFs. Use this command to not install advertised DNS nameservers into the local system. Use this command to restrict the PPPoE session on a given access concentrator. Normally, a host sends a PPPoE initiation packet to start the PPPoE discovery process, a number of access concentrators respond with offer packets and the host selects one of the responding access concentrators to serve this session. Use this command to set re-dial delay time to be used with persist PPPoE sessions. When the PPPoE session is terminated by peer, and on-demand option is not set, the router will attempt to re-establish the PPPoE link. Use this command to set the IP address of the local endpoint of a PPPoE session. If it is not set it will be negotiated. Use this command to set the IP address of the remote endpoint of a PPPoE session. If it is not set it will be negotiated. Use this command to set the idle timeout interval to be used with on-demand PPPoE sessions. When an on-demand connection is established, the link is brought up only when traffic is sent and is disabled when the link is idle for the interval specified. Use this command to set the password for authenticating with a remote PPPoE endpoint. Authentication is optional from the system's point of view but most service providers require it. Use this command to set the username for authenticating with a remote PPPoE endpoint. Authentication is optional from the system's point of view but most service providers require it. Use this command to specify a service name by which the local PPPoE interface can select access concentrators to connect with. It will connect to any access concentrator if not set. VLAN Example VyOS 1.3 (equuleus) supports DHCPv6-PD (:rfc:`3633`). DHCPv6 Prefix Delegation is supported by most ISPs who provide native IPv6 for consumers on fixed networks. VyOS supports setting up PPPoE in two different ways to a PPPoE internet connection. This is because most ISPs provide a modem that is also a wireless router. When set the interface is enabled for "dial-on-demand". With the ``name-server`` option set to ``none``, VyOS will ignore the nameservers your ISP sends you and thus you can fully rely on the ones you have configured statically. You need your PPPoE credentials from your DSL ISP in order to configure this. The usual username is in the form of name@host.net but may vary depending on ISP. You should add a firewall to your configuration above as well by assigning it to the pppoe0 itself as shown here: Your ISPs modem is connected to port ``eth0`` of your VyOS box. disable: No source validation loose: Each incoming packet's source address is also tested against the FIB and if the source address is not reachable via any interface the packet check will fail. strict: Each incoming packet is tested against the FIB and if the interface is not the best reverse path the packet check will fail. By default failed packets are discarded. MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Localazy (https://localazy.com)
Project-Id-Version: 
Language: en
Plural-Forms: nplurals=2; plural=(n==1) ? 0 : 1;
 **DHCPv6 Prefix Delegation (PD)** :abbr:`PPPoE (Point-to-Point Protocol over Ethernet)` is a network protocol for encapsulating PPP frames inside Ethernet frames. It appeared in 1999, in the context of the boom of DSL as the solution for tunneling packets over the DSL connection to the :abbr:`ISPs (Internet Service Providers)` IP network, and from there to the rest of the Internet. A 2005 networking book noted that "Most DSL providers use PPPoE, which provides authentication, encryption, and compression." Typical use of PPPoE involves leveraging the PPP facilities for authenticating the user with a username and password, predominately via the PAP protocol and less often via CHAP. A default route is automatically installed once the interface is up. To change this behavior use the ``no-default-route`` CLI option. As Internet wide PMTU discovery rarely works, we sometimes need to clamp our TCP MSS value to a specific value. This is a field in the TCP options part of a SYN packet. By setting the MSS value, you are telling the remote side unequivocally 'do not try to send me packets bigger than this value'. Business Users Common interface configuration Configuration Configure :abbr:`MTU (Maximum Transmission Unit)` on given `<interface>`. It is the size (in bytes) of the largest ethernet frame sent on this link. Configure interface-specific Host/Router behaviour. If set, the interface will switch to host mode and IPv6 forwarding will be disabled on this interface. Connect/Disconnect Disable given `<interface>`. It will be placed in administratively down (``A/D``) state. Displays queue information for a PPPoE interface. Enable policy for source validation by reversed path, as specified in :rfc:`3704`. Current recommended practice in :rfc:`3704` is to enable strict mode to prevent IP spoofing from DDos attacks. If using asymmetric routing or other complicated routing, then loose mode is recommended. Enabled on-demand PPPoE connections bring up the link only when traffic needs to pass this link.  If the link fails for any reason, the link is brought back up automatically once traffic passes the interface again. If you configure an on-demand PPPoE connection, you must also configure the idle timeout period, after which an idle PPPoE link will be disconnected. A non-zero idle timeout will never disconnect the link after it first came up. Example Example: Example: Delegate a /64 prefix to interface eth8 which will use a local address on this router of ``<prefix>::ffff``, as the address 65534 will correspond to ``ffff`` in hexadecimal notation. Example: If ID is 1 and the client is delegated an IPv6 prefix 2001:db8:ffff::/48, dhcp6c will combine the two values into a single IPv6 prefix, 2001:db8:ffff:1::/64, and will configure the prefix on the specified interface. For a simple home network using just the ISP's equipment, this is usually desirable. But if you want to run VyOS as your firewall and router, this will result in having a double NAT and firewall setup. This results in a few extra layers of complexity, particularly if you use some NAT or tunnel features. Home Users IPv6 IPv6 DHCPv6-PD Example If this parameter is not set or 0, an on-demand link will not be taken down when it is idle and after the initial establishment of the connection. It will stay up forever. If this parameter is not set, the default holdoff time is 30 seconds. In order to have full control and make use of multiple static public IP addresses, your VyOS will have to initiate the PPPoE connection and control it. In order for this method to work, you will have to figure out how to make your DSL Modem/Router switch into a Bridged Mode so it only acts as a DSL Transceiver device to connect between the Ethernet link of your VyOS and the phone cable. Once your DSL Transceiver is in Bridge Mode, you should get no IP address from it. Please make sure you connect to the Ethernet Port 1 if your DSL Transceiver has a switch, as some of them only work this way. In this method, the DSL Modem/Router connects to the ISP for you with your credentials preprogrammed into the device. This gives you an :rfc:`1918` address, such as ``192.168.1.0/24`` by default. Instead of a numerical MSS value `clamp-mss-to-pmtu` can be used to automatically set the proper value. It will be combined with the delegated prefix and the sla-id to form a complete interface address. The default is to use the EUI-64 address of the interface. MSS value = MTU - 20 (IP header) - 20 (TCP header), resulting in 1452 bytes on a 1492 byte MTU. MSS value = MTU - 40 (IPv6 header) - 20 (TCP header), resulting in 1432 bytes on a 1492 byte MTU. No VLAN tagging required by your ISP. Once you have an Ethernet device connected, i.e. `eth0`, then you can configure it to open the PPPoE session for you and your DSL Transceiver (Modem/Router) just acts to translate your messages in a way that vDSL/aDSL understands. Only request an address from the PPPoE server but do not install any default route. Operating Modes Operation PPPoE PPPoE options Place interface in given VRF instance. Requirements: Set a human readable, descriptive alias for this connection. Alias is used by e.g. the :opcmd:`show interfaces` command or SNMP based monitoring tools. Set the distance for the default gateway sent by the PPPoE server. Show detailed information on given `<interface>` Some ISPs by default only delegate a /64 prefix. To request for a specific prefix size use this option to request for a bigger delegation for this pd `<id>`. This value is in the range from 32 - 64 so you could request up to a /32 prefix (if your ISP allows this) down to a /64 delegation. Some recent ISPs require you to build the PPPoE connection through a VLAN interface. One of those ISPs is e.g. Deutsche Telekom in Germany. VyOS can easily create a PPPoE session through an encapsulated VLAN interface. The following configuration will run your PPPoE connection through VLAN7 which is the default VLAN for Deutsche Telekom: Specify the identifier value of the site-level aggregator (SLA) on the interface. ID must be a decimal number greater then 0 which fits in the length of SLA IDs (see below). Specify the interface address used locally on the interface where the prefix has been delegated to. ID must be a decimal integer. Syntax has changed from VyOS 1.2 (crux) and it will be automatically migrated during an upgrade. Test connecting given connection-oriented interface. `<interface>` can be ``pppoe0`` as the example. Test disconnecting given connection-oriented interface. `<interface>` can be ``pppoe0`` as the example. The default value corresponds to 64. The following configuration will assign a /64 prefix out of a /56 delegation to eth0. The IPv6 address assigned to eth0 will be <prefix>::ffff/64. If you do not know the prefix size delegated to you, start with sla-len 0. The largest MTU size you can use with DSL is 1492 due to PPPoE overhead. If you are switching from a DHCP based ISP like cable then be aware that things like VPN links may need to have their MTU sizes adjusted to work within this limit. There is an entire chapter about how to configure a :ref:`vrf`, please check this for additional information. This command allows you to select a specific access concentrator when you know the access concentrators `<name>`. This command got added in VyOS 1.4 and inverts the logic from the old ``default-route`` CLI option. This command was introduced in VyOS 1.4 - it was previously called: ``set firewall options interface <name> adjust-mss <value>`` To request a /56 prefix from your ISP use: Use this command to enable acquisition of IPv6 address using stateless autoconfig (SLAAC). Use this command to instruct the system to establish a PPPoE connection automatically once traffic passes through the interface. A disabled on-demand connection is established at boot time and remains up. If the link fails for any reason, the link is brought back up immediately. Use this command to link the PPPoE connection to a physical interface. Each PPPoE connection must be established over a physical interface. Interfaces can be regular Ethernet interfaces, VIFs or bonding interfaces/VIFs. Use this command to not install advertised DNS nameservers into the local system. Use this command to restrict the PPPoE session on a given access concentrator. Normally, a host sends a PPPoE initiation packet to start the PPPoE discovery process, a number of access concentrators respond with offer packets and the host selects one of the responding access concentrators to serve this session. Use this command to set re-dial delay time to be used with persist PPPoE sessions. When the PPPoE session is terminated by peer, and on-demand option is not set, the router will attempt to re-establish the PPPoE link. Use this command to set the IP address of the local endpoint of a PPPoE session. If it is not set it will be negotiated. Use this command to set the IP address of the remote endpoint of a PPPoE session. If it is not set it will be negotiated. Use this command to set the idle timeout interval to be used with on-demand PPPoE sessions. When an on-demand connection is established, the link is brought up only when traffic is sent and is disabled when the link is idle for the interval specified. Use this command to set the password for authenticating with a remote PPPoE endpoint. Authentication is optional from the system's point of view but most service providers require it. Use this command to set the username for authenticating with a remote PPPoE endpoint. Authentication is optional from the system's point of view but most service providers require it. Use this command to specify a service name by which the local PPPoE interface can select access concentrators to connect with. It will connect to any access concentrator if not set. VLAN Example VyOS 1.3 (equuleus) supports DHCPv6-PD (:rfc:`3633`). DHCPv6 Prefix Delegation is supported by most ISPs who provide native IPv6 for consumers on fixed networks. VyOS supports setting up PPPoE in two different ways to a PPPoE internet connection. This is because most ISPs provide a modem that is also a wireless router. When set the interface is enabled for "dial-on-demand". With the ``name-server`` option set to ``none``, VyOS will ignore the nameservers your ISP sends you and thus you can fully rely on the ones you have configured statically. You need your PPPoE credentials from your DSL ISP in order to configure this. The usual username is in the form of name@host.net but may vary depending on ISP. You should add a firewall to your configuration above as well by assigning it to the pppoe0 itself as shown here: Your ISPs modem is connected to port ``eth0`` of your VyOS box. disable: No source validation loose: Each incoming packet's source address is also tested against the FIB and if the source address is not reachable via any interface the packet check will fail. strict: Each incoming packet is tested against the FIB and if the interface is not the best reverse path the packet check will fail. By default failed packets are discarded. 