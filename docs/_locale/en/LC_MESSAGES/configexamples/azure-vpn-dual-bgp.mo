��    '      T  5   �      `  I   a  |   �     (     4     F  	   S     ]     j     v     �     �  �   �  �     W   �  	   2     <     [     z     �  5   �  Q   �     0  /   J     z     �     �     �     �     �  F   �  �   1     �     �     �     �     	     	     $	  �   )	  I   
  |   N
     �
     �
     �
  	   �
                     %     +  �   1  �   �  W   }  	   �     �     �          7  5   K  Q   �     �  /   �          9     N     V     p       F   �  �   �     j     s     �     �     �     �     �                     &          $   '                                %          #             	   
       "                                 !                                             **Important**: Add an interface route to reach both Azure's BGP listeners **Important**: Disable connected check, otherwise the routes learned from Azure will not be imported into the routing table. 10.0.0.0/16 10.0.0.4,10.0.0.5 10.10.0.0/16 10.10.0.5 198.51.100.3 203.0.113.2 203.0.113.3 64499 65540 A connection resource deployed in Azure linking the Azure VNet gateway and the local network gateway representing the Vyos device. A local network gateway deployed in Azure representing the Vyos device, matching the below Vyos settings except for address space, which only requires the Vyos private IP, in this example 10.10.0.5/32 A pair of Azure VNet Gateways deployed in active-active configuration with BGP enabled. Azure ASN Azure VNet Gateway 1 public IP Azure VNet Gateway 2 public IP Azure VNet Gateway BGP IP Azure address space Clamp the VTI's MSS to 1350 to avoid PMTU blackholes. Configure the IKE and ESP settings to match a subset of those supported by Azure: Configure the VPN tunnels Configure two VTIs with a dummy IP address each Configure your BGP settings Enable IPsec on eth0 Example On-premises address space Pre-shared key Prerequisites Route-Based Redundant Site-to-Site VPN to Azure (BGP over IKEv2/IPsec) This guide shows an example of a redundant (active-active) route-based IKEv2 site-to-site VPN to Azure using VTI and BGP for dynamic routing updates. Vyos ASN Vyos configuration Vyos private IP Vyos public IP WAN Interface ch00s3-4-s3cur3-psk eth0 MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Localazy (https://localazy.com)
Project-Id-Version: 
Language: en
Plural-Forms: nplurals=2; plural=(n==1) ? 0 : 1;
 **Important**: Add an interface route to reach both Azure's BGP listeners **Important**: Disable connected check, otherwise the routes learned from Azure will not be imported into the routing table. 10.0.0.0/16 10.0.0.4,10.0.0.5 10.10.0.0/16 10.10.0.5 198.51.100.3 203.0.113.2 203.0.113.3 64499 65540 A connection resource deployed in Azure linking the Azure VNet gateway and the local network gateway representing the Vyos device. A local network gateway deployed in Azure representing the Vyos device, matching the below Vyos settings except for address space, which only requires the Vyos private IP, in this example 10.10.0.5/32 A pair of Azure VNet Gateways deployed in active-active configuration with BGP enabled. Azure ASN Azure VNet Gateway 1 public IP Azure VNet Gateway 2 public IP Azure VNet Gateway BGP IP Azure address space Clamp the VTI's MSS to 1350 to avoid PMTU blackholes. Configure the IKE and ESP settings to match a subset of those supported by Azure: Configure the VPN tunnels Configure two VTIs with a dummy IP address each Configure your BGP settings Enable IPsec on eth0 Example On-premises address space Pre-shared key Prerequisites Route-Based Redundant Site-to-Site VPN to Azure (BGP over IKEv2/IPsec) This guide shows an example of a redundant (active-active) route-based IKEv2 site-to-site VPN to Azure using VTI and BGP for dynamic routing updates. Vyos ASN Vyos configuration Vyos private IP Vyos public IP WAN Interface ch00s3-4-s3cur3-psk eth0 