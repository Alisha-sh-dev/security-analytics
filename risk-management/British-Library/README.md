# British Library – Rhysida Ransomware Attack

![Topic](https://img.shields.io/badge/Topic-Cybersecurity_Risk_Management-red.svg)
![Target](https://img.shields.io/badge/Target-National_Institution-blue.svg)
![Framework](https://img.shields.io/badge/Framework-NIST_CSF-green.svg)

## 📋 Incident Summary

| Attribute | Details |
| :--- | :--- |
| **Organization** | British Library |
| **Type** | National library of the United Kingdom |
| **Attack Date** | October 31, 2023 |
| **Discovery** | November 1, 2023 |
| **Attack Type** | Ransomware (Rhysida gang) |
| **Ransom Demand** | 20 BTC (£450,000) |

---

## 🚨 Impact
* **Systems Compromised:** Website, online systems, internal databases, CRM systems, user-related databases
* **Data Exposed:**
  * **User Data:** Names, email addresses, postal addresses, phone numbers
  * **Employee Data:** Passport scans, employment contracts, HR files
* **Operational Impact:** Persistent service disruptions; some onsite services affected
* **Dark Web:** Stolen data auctioned by Rhysida group

---

## 🔍 Incident Analysis

### Access Vector
Exploitation of vulnerabilities in **outdated software**, suspected via **unsecured remote access services** (VPNs).

### Known Vulnerabilities Exploited

| CVE | Description | Severity |
| :--- | :--- | :--- |
| **CVE-2020-1472** | Zerologon – Windows Netlogon privilege escalation | Critical |
| **CVE-2021-3456** | Arbitrary Code Execution | High |
| **CVE-2020-9876** | SQL Injection | High |
| **CVE-2019-12345** | Remote Code Execution | High |
| **CVE-2022-5678** | Outdated Library Software | Medium |

### Incident Indicators
* System disruptions across multiple platforms
* Website offline
* Ransom demand
* Stolen data published on dark web
* Ongoing service interruptions

### Response
* **Cybersecurity experts** engaged
* **Law enforcement** notified
* **National Cyber Security Centre (NCSC)** involved
* **Information Commissioner's Office (ICO)** notified
* User notifications – password change advisories

---

## 📊 Vulnerability Scan Summary (Nessus)

| Severity | Count |
| :--- | :-: |
| **High** | 15 |
| **Medium** | 25 |
| **Low** | 10 |

### Sample CVEs Identified
* **CVE-2021-3456** – Arbitrary Code Execution
* **CVE-2019-12345** – Remote Code Execution
* **CVE-2020-9876** – SQL Injection
* **CVE-2023-4863** – Unpatched Library Software
* **CVE-2022-5678** – Outdated Library Software
* **CVE-2018-54321** – Cross-Site Scripting
* **CVE-2013-3214** – vTiger CRM Auth Bypass (Medium)

---

## 📋 Asset Register (Selected)

| Asset Name | Type | Criticality | Sensitivity |
| :--- | :--- | :--- | :--- |
| **Library Catalog Database** | Database | High | Sensitive |
| **HR Personnel Records** | Database | High | Sensitive |
| **User Account Information** | Database | High | Sensitive |
| **Online Systems** | Software | High | Critical |
| **Digital Collections** | Digital Assets | Medium | Sensitive |
| **Physical Manuscripts** | Physical / Digital | High | Highly Sensitive |
| **Library Website** | Website | High | Non-Sensitive |
| **Wi-Fi Network** | Network | Medium | Non-Sensitive |

---

## 📊 Risk Register (Key Risks)

| Risk ID | Risk Name | Likelihood | Impact | Risk Level |
| :--- | :--- | :--- | :--- | :--- |
| **R1** | Data Breach | High | High | High |
| **R2** | Service Disruption | Medium | High | High |
| **R3** | Financial Loss | Medium | High | High |
| **R4** | Reputation Damage | High | Medium | Medium |
| **R5** | Legal Consequences | Medium | High | Medium |
| **R6** | Operation Disruption | Low | High | Low |

---

## 🛡️ Mitigation Actions

| Risk | Mitigation Strategy | NIST CSF Category |
| :--- | :--- | :--- |
| **Outdated Software** | Automated patch management | ID.RA-1 |
| **Unsecured Remote Access** | VPN with MFA, strong authentication | PR.AC-5 |
| **Data Breach (HR Files)** | Encryption of sensitive data | PR.DS-3 |
| **Website Downtime** | Redundant servers, cloud failover | RC.CO-3 |
| **Data Breach (Internal)** | Role-based access control, least privilege | DE.AE-4 |
| **Unpatched Vulnerabilities** | Automated vulnerability scanning | ID.RA-5 |

---

## 🎓 Security Training Program

### Program Objectives
* Educate on data protection regulations & policies
* Improve understanding of cyber threats
* Build skills to identify and respond to security incidents

### Target Audience
* All employees

### Topics Covered
* Data Protection Regulations & Compliance
* Company IT Policies & Acceptable Use
* Cybersecurity Threats & Attack Vectors
* Incident Response & Reporting
* Password Security & Management
* Safe Email & Internet Practices
* Data Handling & Encryption

### Delivery Methods
* Online training modules
* Seminars & workshops
* Infographics & email newsletters
* Simulated phishing exercises
* Posters & display monitors

### Evidence of Learning
* Online quizzes/exams
* Anonymous surveys
* Incident reporting metrics tracking
* Training completion records

---
## 👤 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)
[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.22005797-0B1F3A.svg)](https://doi.org/10.5281/zenodo.22006734)
---
## 📚 References
* [BBC News – British Library Cyber Attack](https://www.bbc.com/)
* [Security Affairs – British Library Attack](https://securityaffairs.com/)
* [Computer Weekly – British Library Attack](https://www.computerweekly.com/)
* [Financial Times – British Library Attack](https://www.ft.com/)
* [Independent – British Library Attack](https://www.independent.co.uk/)
* [CVE-2020-1472 – NVD](https://nvd.nist.gov/vuln/detail/CVE-2020-1472)

---

## ⚠️ Disclaimer
> **This case study is for educational and portfolio purposes only.** It analyzes a publicly reported incident using hypothetical vulnerability assessments to demonstrate risk management methodology.

---
*Part of the Cybersecurity Risk Management Case Studies collection.*
