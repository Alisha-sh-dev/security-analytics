# Canva Data Breach (2019) – Forensic Investigation Report

## 📋 Incident Summary

| Attribute | Details |
|-----------|---------|
| **Organization** | Canva (Online Graphic Design Platform) |
| **Headquarters** | Sydney, Australia |
| **Users Affected** | ~139 million globally |
| **Breach Date** | May 2019 |
| **Perpetrator** | Gnosticplayers (known hacking group) |
| **Data Exposed** | Names, email addresses, usernames, hashed passwords, partial payment details |
| **Password Security** | bcrypt hashed (salting uncertain) |

---

## 🚨 Impact

- **User Data**: 139M user profiles compromised
- **Passwords**: bcrypt-hashed but concerns about salting
- **Cloud Exposure**: Unauthorized access to Google Cloud Platform (GCP) environment
- **Response**: Password reset, law enforcement involvement, external cybersecurity assistance

---

## 🔍 Forensic Investigation Methodology

### Tools Used

| Tool | Purpose |
|------|---------|
| **Autopsy** | Disk image analysis, file system artifacts |
| **Volatility** | Memory forensics (processes, DLLs, malware detection) |
| **Wireshark** | Network traffic analysis |
| **Splunk** | SIEM log correlation |
| **YARA Rules** | Malware signature detection |
| **FTK Imager / dd** | Disk imaging & data acquisition |

---

### Evidence Collection

#### Data Acquisition
- **Disk Imaging**: FTK Imager / dd (bit-by-bit copies)
- **Memory Dumps**: Belkasoft RAM Capturer / DumpIt
- **Network Captures**: Wireshark (real-time traffic)
- **Logs**: System & application logs imported to Splunk

#### Chain of Custody
- MD5/SHA-256 hash verification
- Write-blockers used during extraction
- Encrypted storage for evidence safekeeping

---

### File System Analysis (Autopsy)

| Artifact | Finding |
|----------|---------|
| **User Activity** | Unauthorized access during breach window |
| **Executable Files** | Suspicious files in temp directories (credential harvesters) |
| **Registry** | Persistence mechanisms (Run keys, startup folders) |
| **Timestamps** | MAC times correlated for attack timeline |

---

### Memory Analysis (Volatility)

| Plugin | Finding |
|--------|---------|
| **pslist / pstree** | Anomalous processes (cmd.exe, powershell.exe under non-system credentials) |
| **dlllist / handles** | Injected DLLs, unauthorized handle usage |
| **netscan** | Connections to unauthorized IPs |
| **malfind** | Code injection patterns |
| **cmdscan / consoles** | Attacker command-line activity |

---

### Network Traffic Analysis (Wireshark)

| Finding | Description |
|---------|-------------|
| **Unencrypted Credentials** | Sensitive credentials transmitted in clear text |
| **C2 Communications** | Repeated connections to remote IP addresses |
| **Data Transfer Spikes** | Large outbound traffic indicating data exfiltration |
| **Protocol Analysis** | Unusual ports, obfuscated HTTP traffic |

---

### Log Correlation (Splunk)

| Finding | Description |
|---------|-------------|
| **Failed Logins** | Credential stuffing pattern observed |
| **Privilege Escalation** | Admin account usage during abnormal hours |
| **Anomalous Logins** | Logins from multiple countries in short periods |
| **Script Execution** | PowerShell/CMD scripts from non-standard locations |

---

### YARA Rules

Custom rules targeting:
- Credential dumpers (Mimikatz)
- Post-exploitation tools (Cobalt Strike)
- Base64-encoded PowerShell payloads
- Registry modification artifacts

```yara
rule Suspicious_PowerShell
{
    strings:
        $ps_encoded = "powershell -enc"
        $base64 = /[A-Za-z0-9+/]{100,}/
    condition:
        $ps_encoded and $base64
}
```

---

## 🚨 Attack Analysis

### Attack Vector: Credential Stuffing → GCP Access
- **Credential Stuffing**: Automated use of stolen credentials (LinkedIn, MyFitnessPal)
- **GCP Access**: Stolen cloud API keys + misconfigured access controls
- **Data Extraction**: Production database access → 139M user records

### Indicators of Compromise (IoCs)

| Type | Indicator |
|------|-----------|
| **IP Address** | 185.130.104.0/24 (attacker subnet) |
| **Process** | `powershell.exe -enc` (encoded commands) |
| **Logon Events** | Type 10 (Remote) from multiple regions |
| **Registry** | Run key modifications (`HKCU\Software...`) |
| **API Calls** | `CreateRemoteThread`, `VirtualAllocEx` |

### Evasion Techniques
- **Obfuscation**: Encoded PowerShell commands
- **LOLBins**: Native Windows tools (`certutil`, `mshta`)
- **Cloud Misconfigurations**: GCP audit logs not monitored
- **Anonymized Traffic**: Proxy services, VPNs

---

## ⚖️ Legal & Compliance Aspects

### Australian Privacy Act 1988
- **APP 11**: Failure to secure personal information
- **APP 12**: Delayed breach notification

### GDPR
- **Article 32**: Inadequate technical measures
- **Article 33**: 72-hour breach notification requirement
- **Article 34**: Individual notification obligations

### Consequences
- Potential fines (GDPR: €20M or 4% global turnover)
- Reputational damage
- Regulatory scrutiny

---

## 🛡️ Strategic Recommendations

### Zero Trust Architecture
- Continuous verification of users/devices
- Micro-segmentation to limit lateral movement

### Multi-Factor Authentication (MFA)
- Hardware tokens / authenticator apps
- Mandatory MFA for all admin accounts

### Identity & Access Management (IAM)
- Principle of Least Privilege
- Role-based access control (RBAC)
- Regular access audits

### Data Encryption
- AES-256 for data at rest
- TLS 1.2+ for data in transit
- Hardware Security Modules (HSMs) for keys

### Cloud Security (GCP)
- Centralized audit logging + SIEM
- Cloud Security Posture Management (CSPM)
- Service account hardening (rotate keys, bind roles)
- VPC Service Controls, DLP APIs

---

## 📚 References
- Canva Data Breach Report (Sprintzeal)
- NVD – CVE Database
- Australian Privacy Act 1988
- Volatility Framework
- Autopsy Digital Forensics

---

## 📂 Report Contents
- ✅ Executive Summary
- ✅ Evidence Collection & Chain of Custody
- ✅ File System Analysis (Autopsy)
- ✅ Memory Analysis (Volatility)
- ✅ Network Traffic Analysis (Wireshark)
- ✅ Log Correlation (Splunk)
- ✅ YARA Rules for Malware Hunting
- ✅ Attack Analysis & TTPs
- ✅ Legal & Compliance Aspects
- ✅ Strategic Cybersecurity Recommendations
- ✅ Appendices (Autopsy, Volatility Screenshots)

---

## ⚠️ Disclaimer
This case study is for educational and portfolio purposes only. It analyzes a publicly reported incident using simulated/hypothetical forensic data to demonstrate investigation methodology.

Part of the *Cyber Forensic Investigation Case Studies* collection.
