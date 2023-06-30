��    %      D  5   l      @  M   A     �  0   �  1   �  <   	  5   F  /   |  D   �     �     �  S        m     y     �  V   �  5   �  _  ,  n   �  m   �  P   i  �   �  j   h	  �   �	  j   �
     �
  T   �
  �   T  e   �     @  4   `  4   �  Q   �  (     >   E  (   �  >   �  �   �  M   �       0   ,  1   ]  <   �  5   �  /     D   2     w     �  S   �     �     �       V   %  5   |  _  �  n     m   �  P   �  �   @  j   �  �   Y  j        s  T   �  �   �  e   `     �  4   �  4     Q   P  (   �  >   �  (   
  >   3        $                          #                                !                                                                         "         	   
           %                 **OPTIONAL:** Exclude Inter-VLAN traffic (between VLAN10 and VLAN11) from PBR **Policy definition:** **Routes learned after routing policy applied:** **Routes learned before routing policy applied:** Add default routes for routing ``table 10`` and ``table 11`` Add multiple source IP in one rule with same priority Add policy route matching VLAN source addresses Apply routing policy to **inbound** direction of out VLAN interfaces BGP Example Clamp MSS for a specific IP Finally, to apply the policy route to ingress traffic on our LAN interface, we use: Local route Multiple Uplinks PBR multiple uplinks Policy-Based Routing with multiple ISP uplinks (source ./draw.io/pbr_example_1.drawio) Routing tables that will be used in this example are: The following example allows VyOS to use :abbr:`PBR (Policy-Based Routing)` for traffic, which originated from the router itself. That solution for multiple ISP's and VyOS router will respond from the same interface that the packet was received. Also, it used, if we want that one VPN tunnel to be through one provider, and the second through another. The following example will show how VyOS can be used to redirect web traffic to an external transparent proxy: These commands allow the VLAN10 and VLAN11 hosts to communicate with each other using the main routing table. This can be confirmed using the ``show ip route table 100`` operational command. This creates a route policy called FILTER-WEB with one rule to set the routing table for matching traffic (TCP port 80) to table ID 100 instead of the default routing table. This example shows how to target an MSS clamp (in our example to 1360 bytes) to a specific destination IP. To apply this policy to the correct interface, configure it on the interface the inbound local host will send through to reach our destined target host (in our example eth1). To create routing table 100 and add a new default gateway to be used by traffic matching our route policy: Transparent Proxy Using 'soft-reconfiguration' we get the policy update without bouncing the neighbor. VyOS Policy-Based Routing (PBR) works by matching source IP address ranges and forwarding the traffic using different routing tables. You can view that the policy is being correctly (or incorrectly) utilised with the following command: You now see the longer AS path. ``192.168.2.254`` IP addreess on VyOS eth2 from ISP2 ``203.0.113.254`` IP addreess on VyOS eth1 from ISP1 ``main`` Routing table used by VyOS and other interfaces not participating in PBR ``table 10`` Routing table used for ISP1 ``table 10`` Routing table used for VLAN 10 (192.168.188.0/24) ``table 11`` Routing table used for ISP2 ``table 11`` Routing table used for VLAN 11 (192.168.189.0/24) MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Localazy (https://localazy.com)
Project-Id-Version: 
Language: en
Plural-Forms: nplurals=2; plural=(n==1) ? 0 : 1;
 **OPTIONAL:** Exclude Inter-VLAN traffic (between VLAN10 and VLAN11) from PBR **Policy definition:** **Routes learned after routing policy applied:** **Routes learned before routing policy applied:** Add default routes for routing ``table 10`` and ``table 11`` Add multiple source IP in one rule with same priority Add policy route matching VLAN source addresses Apply routing policy to **inbound** direction of out VLAN interfaces BGP Example Clamp MSS for a specific IP Finally, to apply the policy route to ingress traffic on our LAN interface, we use: Local route Multiple Uplinks PBR multiple uplinks Policy-Based Routing with multiple ISP uplinks (source ./draw.io/pbr_example_1.drawio) Routing tables that will be used in this example are: The following example allows VyOS to use :abbr:`PBR (Policy-Based Routing)` for traffic, which originated from the router itself. That solution for multiple ISP's and VyOS router will respond from the same interface that the packet was received. Also, it used, if we want that one VPN tunnel to be through one provider, and the second through another. The following example will show how VyOS can be used to redirect web traffic to an external transparent proxy: These commands allow the VLAN10 and VLAN11 hosts to communicate with each other using the main routing table. This can be confirmed using the ``show ip route table 100`` operational command. This creates a route policy called FILTER-WEB with one rule to set the routing table for matching traffic (TCP port 80) to table ID 100 instead of the default routing table. This example shows how to target an MSS clamp (in our example to 1360 bytes) to a specific destination IP. To apply this policy to the correct interface, configure it on the interface the inbound local host will send through to reach our destined target host (in our example eth1). To create routing table 100 and add a new default gateway to be used by traffic matching our route policy: Transparent Proxy Using 'soft-reconfiguration' we get the policy update without bouncing the neighbor. VyOS Policy-Based Routing (PBR) works by matching source IP address ranges and forwarding the traffic using different routing tables. You can view that the policy is being correctly (or incorrectly) utilised with the following command: You now see the longer AS path. ``192.168.2.254`` IP addreess on VyOS eth2 from ISP2 ``203.0.113.254`` IP addreess on VyOS eth1 from ISP1 ``main`` Routing table used by VyOS and other interfaces not participating in PBR ``table 10`` Routing table used for ISP1 ``table 10`` Routing table used for VLAN 10 (192.168.188.0/24) ``table 11`` Routing table used for ISP2 ``table 11`` Routing table used for VLAN 11 (192.168.189.0/24) 