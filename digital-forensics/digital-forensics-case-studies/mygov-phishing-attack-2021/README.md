# MyGov Phishing Attack (2021) – Forensic Investigation Report

## 📋 Incident Summary

| Attribute | Details |
|-----------|---------|
| **Organization** | MyGov (Australian Government Digital Portal) |
| **Services** | Centrelink, Medicare, ATO, other government services |
| **Attack Type** | Spear-phishing campaign |
| **Year** | 2021 |
| **Impact** | Credential harvesting, unauthorized access, identity theft |
| **Target** | Finance department, IT administrators |

---

## 🚨 Impact

- **Compromised Accounts**: Employee credentials stolen via phishing
- **Data Exposed**: Medicare details, tax information, personal data
- **Unauthorized Access**: Internal government systems accessed
- **Identity Theft**: Risk of fraudulent claims and misuse

---

## 🔍 Forensic Investigation Methodology

### Tools Used

| Tool | Purpose |
|------|---------|
| **Autopsy** | File system analysis, artifact extraction |
| **Volatility** | Memory forensics, credential extraction |
| **Wireshark** | Network traffic analysis, DNS tracking |
| **Splunk** | SIEM log correlation, alerting |
| **YARA Rules** | Phishing payload detection |
| **FTK Imager** | Disk imaging & acquisition |

---

### Evidence Collection

#### Memory Dump Analysis (Volatility)

| Plugin | Finding |
|--------|---------|
| **chromecache / firefoxhistory** | Visits to phishing clone (`mygov-login-au.net`) |
| **hashdump / credentials** | Credential harvesting artifacts (keylogger) |
| **pslist / malfind** | Suspicious process (`update.exe` from temp directory) |
| **cmdscan** | Captured attacker command-line activity |

#### File System Analysis (Autopsy)

| Artifact | Finding |
|----------|---------|
| **Downloads** | `MyGovStatement.pdf.exe` (dropper payload) |
| **Recent Files** | Payload execution confirmed |
| **Registry** | Persistence via Run keys & scheduled tasks |
| **Prefetch** | Payload execution timing confirmed |

#### Network Traffic (Wireshark)

| Finding | Description |
|---------|-------------|
| **DNS Resolution** | Suspicious domains impersonating MyGov |
| **HTTP POST** | Unencrypted credentials to attacker IPs |
| **C2 Communications** | Non-standard port communication |

#### Log Correlation (Splunk)

| Finding | Description |
|---------|-------------|
| **Unusual Login Times** | 3:47 AM AEST from multiple IPs |
| **Geolocation Mismatch** | Overseas IPs shortly after credential input |
| **Login Failures** | Spike indicating credential-stuffing |
| **Event ID 4688** | Process creation (`MyGovStatement.pdf.exe`) |
| **Event ID 4697** | Rogue service (`UpdateService`) |

#### YARA Rule Detection

```yara
rule MyGov_Phishing_Macro
{
    strings:
        $macro1 = /AutoOpen/
        $url = "http://mygov-login-au.net/redirect"
    condition:
        $macro1 and $url
}
```

---

## 🚨 Attack Analysis

### Phishing Workflow

1. **Email Crafting**
   - **Spoofed sender:** `noreply@mygov.gov.au`
   - **Subject:** `"Important: Your MyGov account is under review"`
   - Urgency-based psychological manipulation

2. **Domain Masquerading**
   - **Registered domain:** `mygov-login-au.net`
   - SSL certificate for perceived legitimacy
   - Exact UI clone of official MyGov login

3. **Credential Harvesting**
   - Phishing site captured credentials via PHP backend
   - Relay to C2 server
   - Keylogger in memory for additional capture

### Evasion Techniques

| Technique | Description |
|-----------|-------------|
| **Domain Masquerading** | Visually similar domain, SSL certificate |
| **LOLBins** | Windows native tools (`certutil`, `mshta`) |
| **User-Level Execution** | No admin rights required |
| **Obfuscation** | Signed/obfuscated executable |

### Windows Event Logs

| Event ID | Description | Finding |
|----------|-------------|---------|
| **4624** | Logon Success | Unexpected logins during non-business hours |
| **4688** | Process Creation | Launch of `MyGovStatement.pdf.exe` |
| **4697** | Service Installed | Rogue service: `UpdateService` |

---

## ⚖️ Legal & Compliance Aspects

### Australian Privacy Act 1988
- **APP 11**: Obligation to secure personal information
- **Notifiable Data Breaches (NDB) Scheme**: Mandatory breach notification

### GDPR (if EU citizens affected)
- **Article 33**: 72-hour breach notification
- **Article 34**: Individual notification

### Consequences of Non-Compliance
- Reputational damage, loss of public trust
- Financial penalties
- Operational disruption

---

## 🛡️ Strategic Recommendations

### 1. Zero Trust Architecture
- "Never trust, always verify" model
- Continuous user/device validation
- Micro-segmentation

### 2. Multi-Factor Authentication (MFA)
- FIDO2 hardware keys (phishing-resistant)
- Mandatory MFA for all privileged accounts
- SMS-based MFA discouraged

### 3. User Awareness & Training
- Regular phishing simulations
- Cybersecurity awareness sessions
- Clear incident reporting protocols

### 4. Email Security
- Advanced email gateway filters
- SPF, DKIM, DMARC implementation
- Real-time link re-writing
- Sandboxing for attachments

### 5. Monitoring & SIEM
Automated alerts for:
- Unusual login attempts/geolocations
- Mass data exports
- Unsigned executable execution
- Threat intelligence integration

### 6. Incident Response
- Clear roles and responsibilities
- Regular tabletop exercises
- Post-incident lessons learned

---

## 📊 Attack Timeline

```text
[+] May 2021 - Phishing emails sent to MyGov users
[+] May 2021 - Users enter credentials on clone site
[+] May 2021 - Credentials harvested, relayed to C2
[+] May 2021 - Unauthorized access to MyGov accounts
[+] May 2021 - Data extraction from Medicare/ATO
[+] May 2021 - Incident detected & response initiated
```

---

## 📚 References
- Cyber Maxx – MyGov Phishing Research
- Alkhalil et al. – Phishing Attacks Comprehensive Study (2021)
- Australian Privacy Act 1988
- GDPR
- Volatility Framework
- Splunk SIEM

---

## 📂 Report Contents
- ✅ Executive Summary
- ✅ Introduction & Context
- ✅ Evidence Collection & Forensic Analysis
- ✅ Attack Analysis & Practical Implementation
- ✅ Legal & Compliance Aspects
- ✅ Strategic Cybersecurity Recommendations
- ✅ References
- ✅ Appendices (Autopsy, Volatility, Splunk Screenshots)

---

## 📎 PowerPoint Presentation
A companion PowerPoint presentation (`MyGov-Phishing-Attack-2021.pptx`) is included, covering:
- Incident Overview
- Attack Methodology
- Forensic Analysis (Volatility, Wireshark)
- Legal & Ethical Considerations
- Recommendations
- Conclusion & Key Learnings

---

## ⚠️ Disclaimer
This case study is for educational and portfolio purposes only. It analyzes a publicly reported incident using simulated/hypothetical forensic data to demonstrate investigation methodology.

Part of the *Cyber Forensic Investigation Case Studies* collection.
