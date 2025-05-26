# WAF175
Notes, build scripts, and associated files for the Configuring BIG-IP WAF version 17.5 course.

# Lab Numbers for versions 17.1 and 17.5

|WAF 17.1 Number          |WAF 17.5 Number         |
|-------------------------|------------------------|
|WAF-C1B01-WebAppVuln     |WAF175-C1B01-VULNERABLE |
|WAF-C1C01-NewPolRapid    |WAF175-C1C01-RAPID      |
|WAF-C1C02-WebAppProtGC   |WAF175-C1C02-GUIDE      |
|WAF-C1D01-TrigVio        |WAF175-C1D01-TRIGGER    |
|WAF-C1D03-HandLrnSug     |WAF175-C1D03-LEARN      |
|WAF-C1D04-PolEnfModStg   |WAF175-C1D04-ENFORCE    |
|WAF-C2A01-UsrDefAttSig   |WAF175-C2A01-ATTACK     |
|WAF-C2B01-LocRemLogProf  |WAF175-C2B01-LOCAL      |
|WAF-C2B02-RespLog        |WAF175-C2B02-RESPONSE   |
|WAF-C2B03-PCICompRpt     |WAF175-C2B03-PCI        |
|WAF-C2C02-BrtFrcAtk      |WAF175-C2C02-BRUTE      |
|WAF-C2C04-SesAwrLogReq   |WAF175-C2C04-AWARE      |
|WAF-C2E01-CrdtCrdDataGrd |WAF175-C2E01-LEAKAGE    |
|WAF-C3A01-BaDoSMit       |WAF175-C3A01-BADOS      |
|WAF-C3A02-TPSDoSMit      |WAF175-C3A02-TPSDOS     |
|WAF-C3B01-BotDefProf     |WAF175-C3B01-BOT        |
|WAF-C3B02-WebScrpAtt     |WAF175-C3B02-SCRAPE     |
|WAF-C3B03-LgnProt        |WAF175-C3B03-LOGIN      |
|WAF-C3B04-SignupProt     |WAF175-C3B04-SIGNUP     |
|WAF-C3B05-SrchProtMS     |WAF175-C3B05-SEARCH     |
|WAF-C3B06-CartProtMS     |WAF175-C3B06-CART       |
|WAF-C3B07-ChkoutProtMS   |WAF175-C3B07-CHECKUP    |
|WAF-C3B08-AutoFrmSubMS   |WAF175-C3B08-FORM       |
|WAF-C3B09-IPHarvMS       |WAF175-C3B09-HARVEST    |
|WAF-C4A01-NvrSelAlways   |WAF175-C4A01-NEVER      |
|WAF-C4A02-LrngEnfrcmt    |WAF175-C4A02-EXPERIMENT |
|WAF-C4A03-CmptSchm       |WAF175-C4A03-COMPACT    |
|WAF-C4B01-CookieTamprg   |WAF175-C4B01-COOKIE     |
|WAF-C4B02-SecHttpHdr     |WAF175-C4B02-HTTP       |
|WAF-C4B03-AsmCookieNam   |WAF175-C4B03-HEADER     |
|WAF-C4C01-StatParam      |WAF175-C4C01-STATIC     |
|WAF-C4C02-DynParam       |WAF175-C4C02-DYNAMIC    |
|WAF-C4D01-AutoSecPol     |WAF175-C4D01-POLICY     |
|WAF-C4E01-LayerPol       |WAF175-C4E01-LAYERED    |
|WAF-C4F01-CustVioIrule   |WAF175-C4F01-IRULE      |
|WAF-C4F02-CustRespPgIrule|WAF175-C4F02-CUSTOM     |
|WAF-C4G01-GeoEnfrcmt     |WAF175-C4G01-GEOLOCATION|
|WAF-C4G02-IpAddrExcpt    |WAF175-C4G02-EXCEPTION  |
|WAF-C4J02-L7LocTrafPol   |WAF175-C4J02-LAYER7     |

# Lab VM RAM (GB) and SCF

|Number                  |bigip1|jump|backend server|SCF          |
|------------------------|------|----|--------------|-------------|
|WAF175-C1B01-VULNERABLE |8     |4   |4             |base.scf     |
|WAF175-C1C01-RAPID      |8     |4   |4             |base.scf     |
|WAF175-C1C02-GUIDE      |8     |4   |4             |*none*       |
|WAF175-C1D01-TRIGGER    |8     |4   |4             |rdp.scf      |
|WAF175-C1D03-LEARN      |8     |4   |4             |rdp.scf      |
|WAF175-C1D04-ENFORCE    |8     |4   |4             |rdp.scf      |
|WAF175-C2A01-ATTACK     |8     |4   |4             |rdp.scf      |
|WAF175-C2B01-LOCAL      |8     |4   |4             |rdp.scf      |
|WAF175-C2B02-RESPONSE   |8     |4   |4             |rdp.scf      |
|WAF175-C2B03-PCI        |8     |4   |4             |rdp.scf      |
|WAF175-C2C02-BRUTE      |8     |4   |4             |rdp.scf      |
|WAF175-C2C04-AWARE      |8     |4   |4             |rdp.scf      |
|WAF175-C2E01-LEAKAGE    |8     |4   |4             |rdp.scf      |
|WAF175-C3A01-BADOS      |8     |4   |4             |rdp.scf      |
|WAF175-C3A02-TPSDOS     |8     |4   |4             |rdp.scf      |
|WAF175-C3B01-BOT        |8     |4   |4             |base.scf     |
|WAF175-C3B02-SCRAPE     |8     |4   |4             |uservices.scf|
|WAF175-C3B03-LOGIN      |8     |4   |4             |uservices.scf|
|WAF175-C3B04-SIGNUP     |8     |4   |4             |uservices.scf|
|WAF175-C3B05-SEARCH     |8     |4   |4             |uservices.scf|
|WAF175-C3B06-CART       |8     |4   |4             |             |
|WAF175-C3B07-CHECKUP    |8     |4   |4             |             |
|WAF175-C3B08-FORM       |8     |4   |4             |             |
|WAF175-C3B09-HARVEST    |8     |4   |4             |             |
|WAF175-C4A01-NEVER      |8     |4   |4             |             |
|WAF175-C4A02-EXPERIMENT |8     |4   |4             |             |
|WAF175-C4A03-COMPACT    |8     |4   |4             |             |
|WAF175-C4B01-COOKIE     |8     |4   |4             |             |
|WAF175-C4B02-HTTP       |8     |4   |4             |             |
|WAF175-C4B03-HEADER     |8     |4   |4             |             |
|WAF175-C4C01-STATIC     |8     |4   |4             |             |
|WAF175-C4C02-DYNAMIC    |8     |4   |4             |             |
|WAF175-C4D01-POLICY     |8     |4   |4             |             |
|WAF175-C4E01-LAYERED    |8     |4   |4             |             |
|WAF175-C4F01-IRULE      |8     |4   |4             |             |
|WAF175-C4F02-CUSTOM     |8     |4   |4             |             |
|WAF175-C4G01-GEOLOCATION|8     |4   |4             |             |
|WAF175-C4G02-EXCEPTION  |8     |4   |4             |             |
|WAF175-C4J02-LAYER7     |8     |4   |4             |             |
