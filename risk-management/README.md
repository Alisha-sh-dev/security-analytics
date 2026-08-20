# Cybersecurity Risk Management – Rhysida Ransomware Case Studies

![Topic](https://img.shields.io/badge/Topic-Cybersecurity_Risk_Management-red.svg)
![Framework](https://img.shields.io/badge/Framework-NIST_CSF-blue.svg)
![License](https://img.shields.io/badge/License-MIT-orange.svg)

## 📋 Overview
This repository contains **three comprehensive risk management case studies** analyzing real-world ransomware attacks perpetrated by the **Rhysida ransomware group** against high-profile UK institutions in 2023.

Each report follows a structured risk management methodology covering:
* Cyber Threat Intelligence & Incident Response
* Vulnerability Scanning & Analysis (Nessus, OpenVAS, Nmap, Metasploit)
* Asset Registers & Risk Registers
* Threat Analysis (DREAD Model) & Risk Heat Maps
* NIST CSF Control Categories & Mitigation Actions
* Security Training & Awareness Program Design

---

## 📁 Case Studies

| # | Case Study | Target | Date | Key Impact |
| :-: | :--- | :--- | :--- | :--- |
| **1** | [University of the West of Scotland (UWS)](./UWS/) | University | July 2023 | Staff PII exposed, 50% IT systems disabled |
| **2** | [King Edward VII's Hospital](./King-Edward-VII-Hospital/) | Private Hospital | Nov 2023 | Medical records leaked, Royal Family data at risk |
| **3** | [British Library](./British-Library/) | National Library | Oct 2023 | User/employee data stolen, online services disrupted |

---

## 🔧 Common Tools & Frameworks Used

| Category | Tools / Methods |
| :--- | :--- |
| **Vulnerability Scanning** | Nessus, OpenVAS, Nmap, Metasploit |
| **Threat Analysis** | DREAD Model, Risk Heat Maps |
| **Risk Framework** | NIST Cybersecurity Framework (CSF) |
| **Risk Register** | Likelihood × Impact matrices |
| **Training** | Security awareness program design |

---

## 🚨 Key Vulnerabilities Identified Across Cases

| CVE | Description | Severity |
| :--- | :--- | :--- |
| **CVE-2020-1472** | Zerologon – Windows Netlogon privilege escalation | Critical |
| **CVE-2023-4966** | Citrix Bleed – MFA bypass in NetScaler ADC/Gateway | High |
| **CVE-2021-21972** | VMware vCenter Server remote code execution | High |
| **CVE-2013-3214** | vTiger CRM authentication bypass & file upload | Medium |

---

## 📊 Sample Risk Heat Map

| Likelihood ↓ / Impact → | High | Medium | Low |
| :--- | :-: | :-: | :-: |
| **High** | 🔴 R1, R2 | 🟡 R3 | 🟢 |
| **Medium** | 🟡 R4 | 🟡 R5 | 🟢 R6 |
| **Low** | 🟢 | 🟢 | 🟢 |

---

## 🛡️ Common Mitigation Recommendations
* Regular patch management & vulnerability scanning
* Multi-factor authentication (MFA) for remote access
* Network segmentation & zero-trust architecture
* Data encryption (at rest and in transit)
* Security awareness training & simulated phishing
* Incident response plan testing & updates

---

## 📚 References
* [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
* [NVD – CVE Database](https://nvd.nist.gov/)
* [NCSC UK](https://www.ncsc.gov.uk/)
* [Trend Micro – Rhysida Ransomware Research](https://www.trendmicro.com/)

---

## ⚠️ Disclaimer
> **This repository is for educational and portfolio purposes only.** The case studies analyze publicly reported incidents using hypothetical vulnerability assessments. All techniques are demonstrated for learning risk management methodologies. Do **not** use against any system without explicit authorization.

---

## 👨‍💻 Author
**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)
[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.22005797-0B1F3A.svg)](https://doi.org/10.5281/zenodo.22006734)
---
*This project demonstrates expertise in cybersecurity risk assessment, incident response, and security program development.*
