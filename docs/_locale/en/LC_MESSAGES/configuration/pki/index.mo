��    9      �  O   �      �  A  �  3   +  <   _  H   �  �   �  �   �  F     t   R     �     �  *   �     (	  i   5	  N   �	  �   �	  V   {
  v   �
  s   I     �  �   �  Y   �  E   �  Y   #  |   }  E   �  �   @            j   "  f   �     �  	   �       J   
     U  I   h  D   �  %   �  :     0   X  8   �  ;   �  J  �  �   I  �   )  c   �        +  	   2  1   <  1   n  3   �  3   �  x     �   �  i     �   �  A  ]  3   �  <   �  H     �   Y  �   �  F     t   �     ;     V  *   q     �  i   �  N     �   b  V   �  v   F   s   �      1!  �   K!  Y   �!  E   Q"  Y   �"  |   �"  E   n#  �   �#     w$     �$  j   �$  f   %     h%  	   p%     z%  J   ~%     �%  I   �%  D   &&  %   k&  :   �&  0   �&  8   �&  ;   6'  J  r'  �   �(  �   �)  c   $*    �*    �+  	   �,  1   �,  1   �,  3   -  3   H-  x   |-  �   �-  i   �.                        9            	   
           %                .   !       $              )          "                 4             ,                 6   0   *   /         #   1         7   5   '                    8   &       2       (   3      +                              -    :vytask:`T3642` describes a new CLI subsystem that serves as a "certstore" to all services requiring any kind of encryption key(s). In short, public and private certificates are now stored in PKCS#8 format in the regular VyOS CLI. Keys can now be added, edited, and deleted using the regular set/edit/delete CLI commands. A human readable description what this CA is about. A human readable description what this certificate is about. Add public key portion for the certificate named `name` to the VyOS CLI. Add the CAs private key to the VyOS CLI. This should never leave the system, and is only required if you use VyOS as your certificate generator as mentioned above. Add the private key portion of this certificate to the CLI. This should never leave the system as it is used to decrypt the data. Add the public CA certificate for the CA named `name` to the VyOS CLI. After we have imported the CA certificate(s) we can now import and add certificates used by services on this router. CA (Certificate Authority) Certificate Authority (CA) Certificate revocation list in PEM format. Certificates Create a new :abbr:`CA (Certificate Authority)` and output the CAs public and private key on the console. Create a new public/private keypair and output the certificate on the console. Create a new public/private keypair which is signed by the CA referenced by `ca-name`. The signed certificate is then output to the console. Create a new self-signed certificate. The public/private is then shown on the console. Create a new subordinate :abbr:`CA (Certificate Authority)` and sign it using the private key referenced by `ca-name`. Create a new subordinate :abbr:`CA (Certificate Authority)` and sign it using the private key referenced by `name`. Diffie-Hellman parameters Don't be afraid that you need to re-do your configuration. Key transformation is handled, as always, by our migration scripts, so this will be a smooth transition for you! Genearate a new OpenVPN shared secret. The generated secred is the output to the console. Generate a WireGuard pre-shared secret used for peers to communicate. Generate a new WireGuard public/private key portion and output the result to the console. Generate a new set of :abbr:`DH (Diffie-Hellman)` parameters. The key size is requested by the CLI and defaults to 2048 bit. If CA is present, this certificate will be included in generated CRLs In addition to the command above, the output is in a format which can be used to directly import the key into the VyOS CLI by simply copy-pasting the output from op-mode into configuration mode. Key Generation Key usage (CLI) Mark the CAs private key as password protected. User is asked for the password when the key is referenced. Mark the private key as password protected. User is asked for the password when the key is referenced. OpenVPN Operation PKI Please take a look at the Contributing Guide for our :ref:`documentation`. Server Certificate Show a list of installed :abbr:`CA (Certificate Authority)` certificates. Show a list of installed :abbr:`CRLs (Certificate Revocation List)`. Show a list of installed certificates Show only information for specified Certificate Authority. Show only information for specified certificate. The generated parameters are then output to the console. This section needs improvements, examples and explanations. VyOS 1.4 changed the way in how encrytion keys or certificates are stored on the system. In the pre VyOS 1.4 era, certificates got stored under /config and every service referenced a file. That made copying a running configuration from system A to system B a bit harder, as you had to copy the files and their permissions by hand. VyOS not only can now manage certificates issued by 3rd party Certificate Authorities, it can also act as a CA on its own. You can create your own root CA and sign keys with it by making use of some simple op-mode commands. VyOS now also has the ability to create CAs, keys, Diffie-Hellman and other keypairs from an easy to access operational level command. VyOS operational mode commands are not only available for generating keys but also to display them. When loading the certificate you need to manually strip the ``-----BEGIN CERTIFICATE-----`` and ``-----END CERTIFICATE-----`` tags. Also, the certificate/key needs to be presented in a single line without line breaks (``\n``), this can be done using the following shell command: When loading the certificate you need to manually strip the ``-----BEGIN KEY-----`` and ``-----END KEY-----`` tags. Also, the certificate/key needs to be presented in a single line without line breaks (``\n``), this can be done using the following shell command: WireGuard ``$ tail -n +2 ca.key | head -n -1 | tr -d '\n'`` ``$ tail -n +2 ca.pem | head -n -1 | tr -d '\n'`` ``$ tail -n +2 cert.key | head -n -1 | tr -d '\n'`` ``$ tail -n +2 cert.pem | head -n -1 | tr -d '\n'`` ``interface`` is used for the VyOS CLI command to identify the WireGuard interface where this private key is to be used. ``name`` is used for the VyOS CLI command to identify this key. This key ``name`` is then used in the CLI configuration to reference the key instance. ``peer`` is used for the VyOS CLI command to identify the WireGuard peer where this secred is to be used. MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Localazy (https://localazy.com)
Project-Id-Version: 
Language: en
Plural-Forms: nplurals=2; plural=(n==1) ? 0 : 1;
 :vytask:`T3642` describes a new CLI subsystem that serves as a "certstore" to all services requiring any kind of encryption key(s). In short, public and private certificates are now stored in PKCS#8 format in the regular VyOS CLI. Keys can now be added, edited, and deleted using the regular set/edit/delete CLI commands. A human readable description what this CA is about. A human readable description what this certificate is about. Add public key portion for the certificate named `name` to the VyOS CLI. Add the CAs private key to the VyOS CLI. This should never leave the system, and is only required if you use VyOS as your certificate generator as mentioned above. Add the private key portion of this certificate to the CLI. This should never leave the system as it is used to decrypt the data. Add the public CA certificate for the CA named `name` to the VyOS CLI. After we have imported the CA certificate(s) we can now import and add certificates used by services on this router. CA (Certificate Authority) Certificate Authority (CA) Certificate revocation list in PEM format. Certificates Create a new :abbr:`CA (Certificate Authority)` and output the CAs public and private key on the console. Create a new public/private keypair and output the certificate on the console. Create a new public/private keypair which is signed by the CA referenced by `ca-name`. The signed certificate is then output to the console. Create a new self-signed certificate. The public/private is then shown on the console. Create a new subordinate :abbr:`CA (Certificate Authority)` and sign it using the private key referenced by `ca-name`. Create a new subordinate :abbr:`CA (Certificate Authority)` and sign it using the private key referenced by `name`. Diffie-Hellman parameters Don't be afraid that you need to re-do your configuration. Key transformation is handled, as always, by our migration scripts, so this will be a smooth transition for you! Genearate a new OpenVPN shared secret. The generated secred is the output to the console. Generate a WireGuard pre-shared secret used for peers to communicate. Generate a new WireGuard public/private key portion and output the result to the console. Generate a new set of :abbr:`DH (Diffie-Hellman)` parameters. The key size is requested by the CLI and defaults to 2048 bit. If CA is present, this certificate will be included in generated CRLs In addition to the command above, the output is in a format which can be used to directly import the key into the VyOS CLI by simply copy-pasting the output from op-mode into configuration mode. Key Generation Key usage (CLI) Mark the CAs private key as password protected. User is asked for the password when the key is referenced. Mark the private key as password protected. User is asked for the password when the key is referenced. OpenVPN Operation PKI Please take a look at the Contributing Guide for our :ref:`documentation`. Server Certificate Show a list of installed :abbr:`CA (Certificate Authority)` certificates. Show a list of installed :abbr:`CRLs (Certificate Revocation List)`. Show a list of installed certificates Show only information for specified Certificate Authority. Show only information for specified certificate. The generated parameters are then output to the console. This section needs improvements, examples and explanations. VyOS 1.4 changed the way in how encrytion keys or certificates are stored on the system. In the pre VyOS 1.4 era, certificates got stored under /config and every service referenced a file. That made copying a running configuration from system A to system B a bit harder, as you had to copy the files and their permissions by hand. VyOS not only can now manage certificates issued by 3rd party Certificate Authorities, it can also act as a CA on its own. You can create your own root CA and sign keys with it by making use of some simple op-mode commands. VyOS now also has the ability to create CAs, keys, Diffie-Hellman and other keypairs from an easy to access operational level command. VyOS operational mode commands are not only available for generating keys but also to display them. When loading the certificate you need to manually strip the ``-----BEGIN CERTIFICATE-----`` and ``-----END CERTIFICATE-----`` tags. Also, the certificate/key needs to be presented in a single line without line breaks (``\n``), this can be done using the following shell command: When loading the certificate you need to manually strip the ``-----BEGIN KEY-----`` and ``-----END KEY-----`` tags. Also, the certificate/key needs to be presented in a single line without line breaks (``\n``), this can be done using the following shell command: WireGuard ``$ tail -n +2 ca.key | head -n -1 | tr -d '\n'`` ``$ tail -n +2 ca.pem | head -n -1 | tr -d '\n'`` ``$ tail -n +2 cert.key | head -n -1 | tr -d '\n'`` ``$ tail -n +2 cert.pem | head -n -1 | tr -d '\n'`` ``interface`` is used for the VyOS CLI command to identify the WireGuard interface where this private key is to be used. ``name`` is used for the VyOS CLI command to identify this key. This key ``name`` is then used in the CLI configuration to reference the key instance. ``peer`` is used for the VyOS CLI command to identify the WireGuard peer where this secred is to be used. 