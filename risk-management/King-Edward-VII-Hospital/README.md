# King Edward VII's Hospital – Rhysida Ransomware Attack

![Topic](https://img.shields.io/badge/Topic-Cybersecurity_Risk_Management-red.svg)
![Target](https://img.shields.io/badge/Target-Private_Healthcare-blue.svg)
![Framework](https://img.shields.io/badge/Framework-NIST_CSF-green.svg)

## 📋 Incident Summary

| Attribute | Details |
| :--- | :--- |
| **Organization** | King Edward VII's Hospital, London |
| **Type** | Private healthcare provider (charity) |
| **Royal Connection** | Preferred hospital for Royal Family members |
| **Attack Date** | November 27, 2023 (discovered) |
| **Attack Type** | Ransomware (Rhysida gang) |
| **Ransom Threat** | Data auctioned on dark web |

---

## 🚨 Impact
* **Data Compromised:** Medical reports, X-rays, prescriptions, registration forms
* **Patient Impact:** Less than 1% of patient database affected
* **Royal Family:** Information reportedly isolated and **NOT compromised**
* **Systems Affected:** Core IT systems containing sensitive medical records

---

## 🔍 Incident Analysis

### Access Vector
Exploitation of vulnerabilities in **external-facing services** (VPNs, RDPs) and **compromised credentials**.

### Known Vulnerabilities Exploited

| CVE | Description | Severity |
| :--- | :--- | :--- |
| **CVE-2020-1472** | Zerologon – Netlogon privilege escalation | Critical |
| **CVE-2023-4966** | Citrix Bleed – MFA bypass in NetScaler ADC | High |
| **CVE-2023-28252** | Windows Common Log File System Driver EoP | High |

### Rhysida TTPs
1. **Remote external services exploitation** (VPNs, RDPs)
2. **Compromised credentials** (stolen/auth info)
3. **Living-off-the-land** techniques (native OS tools)
4. **Data exfiltration** via MegaSync

### Response
* **GCHQ** investigation (National Cyber Security Centre)
* **Police** involvement
* **NCSC** support and guidance
* Internal forensic investigation

---

## 📊 Vulnerability Scan Summary

| Severity | Count |
| :--- | :-: |
| **High** | 5 |
| **Medium** | 2 |
| **Low** | 3 |

### Sample CVEs Identified
* **CVE-2023-1234** – High
* **CVE-2023-5678** – High
* **CVE-2023-9101** – High
* **CVE-2023-4966** – High (Citrix Bleed)
* **CVE-2020-1472** – High (Zerologon)
* **CVE-2023-28252** – Medium
* **CVE-2023-2468** – Medium
* **CVE-2021-45046** – Low
* **CVE-2021-45105** – Low

---

## 🔬 Deep Dive: CVE-2023-4966 (Citrix Bleed)

| Attribute | Detail |
| :--- | :--- |
| **Description** | Critical vulnerability in Citrix NetScaler ADC/Gateway allowing MFA bypass |
| **CVSS Score** | High |
| **Exploitation** | Threat actors craft HTTP GET requests to steal valid AAA session cookies |
| **Risk** | Session hijacking → privileged access → network compromise |
| **Fix** | Patch immediately, isolate appliances, search for IOCs |

### Metasploit Module
```bash
msf6 > use exploit/windows/http/citrix_netscaler_gateway_cve_2023_4966
```

---

## 📋 Asset Register (Selected)

| Asset Name | Type | Criticality | Sensitivity |
| :--- | :--- | :--- | :--- |
| **Patient Records** | Health Information | High | High |
| **Financial Data** | Financial Records | High | Medium |
| **Employee Records** | HR Data | High | High |
| **Research Reports** | Research Documents | Medium | Medium |
| **Intellectual Property** | Patents, Proprietary Data | High | High |
| **Backup Data** | Backup Systems | High | High |

---

## 📊 Risk Register (Key Risks)

| Risk ID | Risk Name | Likelihood | Impact | Risk Level |
| :--- | :--- | :--- | :--- | :--- |
| **R1** | Data Breach – Patient Records | High | High | High |
| **R2** | Compromised Confidentiality (Royal Family) | Moderate | High | High |
| **R3** | Business Disruption & Reputation Damage | High | High | High |
| **R4** | Financial Loss | Moderate | High | High |
| **R5** | Regulatory Non-Compliance | Moderate | High | High |
| **R6** | Reputational Damage | High | High | High |
| **R7** | Network Infrastructure Vulnerability | High | High | High |

---

## 🛡️ Mitigation Actions

| Risk | Mitigation Strategy | NIST CSF Category |
| :--- | :--- | :--- |
| **Unauthorized Access** | MFA, RBAC, access audits | ID / PR (Identify / Protect) |
| **Exploited Vulnerabilities** | Automated patch management | ID (Identify) |
| **Compromised VPNs** | Enhanced encryption, MFA, monitoring | PR (Protect) |
| **Phishing & Credential Theft** | Security awareness training, simulated phishing | PR (Protect) |
| **Lack of Network Segmentation** | Firewalls, VLANs, micro-segmentation | PR (Protect) |
| **Citrix Bleed (CVE-2023-4966)** | **Immediate patching + appliance isolation** | PR / DE (Protect / Detect) |
| **Malware Execution** | File execution restrictions, network monitoring | DE / RC (Detect / Recover) |

---

## 🎓 Security Training Program

### Objectives
* Understand security responsibilities
* Recognize ransomware/phishing threats
* Follow data protection policies

### Target Audience
* All employees (medical, admin, IT, support)

### Topics
* Security policies & regulations (GDPR, DPA 2018)
* Threat awareness (ransomware, phishing)
* Best practices (password, VPN, credential safety)

### Delivery
* Online modules (LMS)
* Simulated phishing exercises
* Webinars & workshops
* Policy manuals

### Evidence of Learning
* Assessment scores
* Completion certificates
* Incident reporting metrics
* Employee feedback surveys

---
## 👤 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)
[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.22005797-0B1F3A.svg)](https://doi.org/10.5281/zenodo.22006734)

---

## ⚠️ Disclaimer
> **This case study is for educational and portfolio purposes only.** It analyzes a publicly reported incident using hypothetical vulnerability assessments to demonstrate risk management methodology.

---
