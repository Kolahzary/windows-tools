# win-acme dns challenge scripts for Microsoft DNS Server
Microsoft DNS Server should be installed on the same server

## Example:
```
microsoft-dns.bat create kolahzary.ir testing.kolahzary.ir text-content-here

microsoft-dns.bat delete kolahzary.ir testing.kolahzary.ir text-content-here
```


## Usage with win-acme
1. Download and extract win-acme
2. Copy Scripts into win-acme/Scripts folder
3. Open wacs.exe
4. Manually complete wizard or simply paste following code into window:
```
M
1
kolahzary.ir, *.kolahzary.ir
kolahzary.ir, kolahzary.ir
3
./Scripts/microsoft-dns.bat
1


2
3
../certs
1

```

Finally you'll see something like this in your console:

```

 [INFO] A simple Windows ACMEv2 client (WACS)
 [INFO] Software version 2.0.6.284 (RELEASE)
 [INFO] IIS not detected
 [INFO] Please report issues at https://github.com/PKISharp/win-acme


 M: Create new certificate with advanced options
 L: List scheduled renewals
 R: Renew scheduled
 S: Renew specific
 A: Renew *all*
 O: More options...
 Q: Quit

 Please choose from the menu: M

 [INFO] Running in mode: Interactive, Advanced

 1: Manually input host names
 <Enter>: Abort

 Which kind of certificate would you like to create?: 1

 Enter comma-separated list of host names, starting with the common name: kolahzary.ir, *.kolahzary.ir

 [INFO] Target generated using plugin Manual: kolahzary.ir and 1 alternatives

 Suggested FriendlyName is '[Manual] kolahzary.ir', press enter to accept or type an alternative: kolahzary.ir, kolahzary.ir

 1: [dns-01] CNAME the record to a server that supports the acme-dns API
 2: [dns-01] Manually create record
 3: [dns-01] Run script to create and update records
 <Enter>: Abort

 How would you like to validate this certificate?: 3

 Path to script that creates DNS records: ./Scripts/microsoft-dns.bat

 1: Using the same script
 2: Using a different script
 3: Do not delete

 How to delete records after validation: 1

 {Identifier}:       Domain that's being validated
 {RecordName}:       Full TXT record name
 {Token}:            Expected value in the TXT record

 Input parameters for create script, or enter for default "create {Identifier} {RecordName} {Token}": <Enter>

 Input parameters for delete script, or enter for default "delete {Identifier} {RecordName} {Token}": <Enter>

 1: Elliptic Curve key
 2: Standard RSA key pair

 What kind of CSR would you like to create?: 2

 1: IIS Central Certificate Store
 2: Windows Certificate Store
 3: Write .pem files to folder (Apache, ngnix, etc.)

 How would you like to store this certificate?: 3

 Path to folder where .pem files are stored: ../certs

 1: Do not run any installation steps
 2: Run a custom script
 <Enter>: Abort

 Which installer should run for the certificate?: 1


 [INFO] Authorize identifier: kolahzary.ir
 [INFO] Authorizing kolahzary.ir using dns-01 validation (DnsScript)
 [INFO] Script ./Scripts/microsoft-dns.bat starting with parameters create kolahzary.ir _acme-challenge.kolahzary.ir g_o9B6-5mnz4r5DygAO6BpbPaV2F4Oc7wF5aUXofYjg
 [INFO] Answer should now be available at _acme-challenge.kolahzary.ir
 [INFO] Preliminary validation succeeded: g_o9B6-5mnz4r5DygAO6BpbPaV2F4Oc7wF5aUXofYjg found in g_o9B6-5mnz4r5DygAO6BpbPaV2F4Oc7wF5aUXofYjg
 [INFO] Authorization result: valid
 [INFO] Script ./Scripts/microsoft-dns.bat starting with parameters delete kolahzary.ir _acme-challenge.kolahzary.ir g_o9B6-5mnz4r5DygAO6BpbPaV2F4Oc7wF5aUXofYjg
 [INFO] Authorize identifier: kolahzary.ir
 [INFO] Authorizing kolahzary.ir using dns-01 validation (DnsScript)
 [INFO] Script ./Scripts/microsoft-dns.bat starting with parameters create kolahzary.ir _acme-challenge.kolahzary.ir c1VPUspfNmzg4hqCcmkIyVD3PnT-DewhBZMcNY0B1uE
 [INFO] Answer should now be available at _acme-challenge.kolahzary.ir
 [INFO] Preliminary validation succeeded: c1VPUspfNmzg4hqCcmkIyVD3PnT-DewhBZMcNY0B1uE found in c1VPUspfNmzg4hqCcmkIyVD3PnT-DewhBZMcNY0B1uE
 [INFO] Authorization result: valid
 [INFO] Script ./Scripts/microsoft-dns.bat starting with parameters delete kolahzary.ir _acme-challenge.kolahzary.ir c1VPUspfNmzg4hqCcmkIyVD3PnT-DewhBZMcNY0B1uE
 [INFO] Requesting certificate kolahzary.ir, kolahzary.ir
 [INFO] Exporting .pem files to ../certs
 [INFO] Installing with None...
 [INFO] Next renewal scheduled at 2019/6/27 2:00:53
 [INFO] Renewal for kolahzary.ir, kolahzary.ir succeeded
```
