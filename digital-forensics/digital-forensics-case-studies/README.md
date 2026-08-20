# Cyber Forensic Investigation – Case Studies

## 📋 Overview

This repository contains **two comprehensive cyber forensic investigation reports** analyzing real-world cybersecurity incidents:

| # | Case Study | Target | Year | Key Impact |
|---|------------|--------|------|------------|
| **1** | [Canva Data Breach](./Canva-Data-Breach-2019/) | Canva (Graphic Design Platform) | 2019 | 139 million users' data exposed |
| **2** | [MyGov Phishing Attack](./MyGov-Phishing-Attack-2021/) | MyGov (Australian Government Portal) | 2021 | Credential harvesting, identity theft |

---

## 🔍 Investigation Methodology

Each report follows a structured forensic investigation process:

### 1. Evidence Collection & Forensic Analysis
- **Data Acquisition**: Disk imaging (FTK Imager, dd), memory dumps, network packet captures
- **Chain of Custody**: Hash verification (MD5/SHA-256), timestamping, encrypted storage

### 2. Tool-Based Analysis

| Tool | Purpose |
|------|---------|
| **Autopsy** | File system analysis, timeline reconstruction, artifact extraction |
| **Volatility** | Memory forensics (processes, DLLs, network connections, malware detection) |
| **Wireshark** | Network traffic analysis, packet inspection, C2 communication detection |
| **Splunk** | SIEM log correlation, anomaly detection, attack timeline reconstruction |
| **YARA Rules** | Malware signature detection, IOC hunting |

### 3. Attack Analysis
- Attack vector identification
- TTPs (Tactics, Techniques, Procedures) reconstruction
- Indicators of Compromise (IoCs) extraction
- Evasion techniques analysis

### 4. Legal & Compliance
- Australian Privacy Act 1988 & APPs
- Notifiable Data Breaches (NDB) Scheme
- GDPR applicability
- Compliance recommendations

### 5. Strategic Recommendations
- Zero Trust Architecture
- Multi-factor Authentication (MFA)
- Security awareness training
- Cloud security improvements

---

## 🔧 Forensic Tools Demonstrated

### Autopsy (File System Analysis)
- User activity (browser history, downloads)
- Executable files & persistence mechanisms
- Registry analysis
- Timeline reconstruction

### Volatility (Memory Forensics)
```bash
python2 vol.py -f memory.dump --profile=WinXPSP2x86 pslist
python2 vol.py -f memory.dump --profile=WinXPSP2x86 malfind
python2 vol.py -f memory.dump --profile=WinXPSP2x86 cmdscan
python2 vol.py -f memory.dump --profile=WinXPSP2x86 connections
```

### Wireshark (Network Analysis)
- DNS redirection detection
- HTTP POST credential capture
- C2 communication identification
- Protocol analysis

### Splunk (Log Correlation)
- Failed login analysis
- Geolocation mismatch detection
- Process execution monitoring
- Automated alerting

---

## 🚨 Key Findings

### Canva Data Breach (2019)
- **Attack Vector**: Credential stuffing → Unauthorized GCP access
- **Data Exposed**: 139M users' names, emails, usernames, hashed passwords
- **Perpetrator**: Gnosticplayers group
- **Vulnerabilities**: Weak password storage, insufficient cloud monitoring, lack of MFA

### MyGov Phishing Attack (2021)
- **Attack Vector**: Spear-phishing emails mimicking official MyGov communications
- **Impact**: Credential harvesting, Medicare/ATO data compromise
- **TTPs**: Domain masquerading, SSL certificate abuse, macro-based payloads
- **Evasion**: LOLBins, obfuscated PowerShell, user-level execution

---

## 📊 Sample IoCs (Indicators of Compromise)

| Type | Indicator |
|------|-----------|
| **IP Address** | 185.130.104.0/24 (known attacker subnet) |
| **Process** | powershell.exe -enc (encoded commands) |
| **Domain** | mygov-login-au.net (phishing clone) |
| **Registry** | HKCU\Software\Microsoft\Windows\CurrentVersion\Run |
| **Event IDs** | 4624 (Logon), 4688 (Process Creation), 4697 (Service Install) |

---

## 🛡️ Strategic Recommendations

### Zero Trust Architecture
- "Never trust, always verify" model
- Continuous user/device validation
- Micro-segmentation

### Enhanced Authentication
- Phishing-resistant MFA (FIDO2 hardware keys)
- Role-based access control (RBAC)
- Principle of Least Privilege (PoLP)

### Security Monitoring
- SIEM integration (Splunk, Azure Sentinel)
- Real-time alerting (unusual logins, data exports)
- Threat intelligence feeds

### Awareness & Training
- Regular phishing simulations
- Cybersecurity awareness sessions
- Clear incident reporting protocols

### Cloud Security (GCP)
- Cloud Security Posture Management (CSPM)
- VPC Service Controls
- Workload Identity Federation
- DLP APIs for sensitive data detection

---

## 📚 References
- [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
- [Australian Privacy Act 1988](https://www.legislation.gov.au/Series/C2004A03712)
- [GDPR](https://gdpr-info.eu/)
- [Volatility Framework](https://www.volatilityfoundation.org/)
- [Autopsy Digital Forensics](https://www.autopsy.com/)
- [Splunk SIEM](https://www.splunk.com/)

---

## ⚠️ Disclaimer
> **This repository is for educational and portfolio purposes only.** The case studies analyze publicly reported incidents using simulated/hypothetical forensic data. All techniques are demonstrated for learning forensic investigation methodology. Do **not** apply these techniques against any system without explicit authorization.

---

## 👤 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@Alisha--sh--dev-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Alisha--sh-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)

*This project demonstrates expertise in digital forensics, incident response, and cybersecurity investigation.*
