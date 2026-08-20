# Risk Management Analysis – University of Westminster Case Study

## 📖 Overview

This report provides a comprehensive risk management analysis based on a **real-world cyber incident** – the 2023 ransomware attack on the **University of the West of Scotland (UWS)** by the **Rhysida ransomware group**.

The project demonstrates a complete **risk management lifecycle**, including:

- **Cyber Threat Intelligence** – Incident investigation, attack vector analysis, and threat actor profiling
- **Automated Vulnerability Scanning** – Nessus and Metasploit vulnerability assessment
- **Asset Register** – Identification and classification of critical assets
- **Risk Analysis Models** – Risk heat map and DREAD threat analysis
- **Risk Register** – Comprehensive risk documentation with CVE mapping
- **Risk Control & Mitigation** – NIST CSF-aligned security controls
- **Security Training Program** – Customized awareness program for organizational defense

---

## 🎯 Case Study: UWS Ransomware Attack (July 2023)

### Incident Summary

| Detail | Information |
|--------|-------------|
| **Victim** | University of the West of Scotland (UWS) |
| **Date** | July 6, 2023 |
| **Threat Actor** | Rhysida Ransomware Group |
| **Ransom Demand** | 20 Bitcoin (~£450,000) |
| **Impact** | 50% of IT systems offline, staff data exposed (bank details, NI numbers), website downtime |
| **Access Vector** | Remote-viewing software + Zerologon (CVE-2020-1472) |

### Rhysida Ransomware Group Profile

- Emerged in **May 2023**
- Primarily targets **healthcare and education sectors**
- Uses **double extortion** (data theft + encryption)
- Operates a **data leak site** on the dark web

---

## 🔬 Vulnerability Scanning

### Nessus Scan Results (uws.ac.uk)

| Severity | Count |
|----------|-------|
| **Critical** | 0 |
| **High** | 2 |
| **Medium** | 5 |
| **Low** | 8 |
| **Informational** | 20+ |

### Key Vulnerabilities Identified

| CVE | Name | Severity | Description |
|-----|------|----------|-------------|
| **CVE-2020-1472** | Zerologon | Critical | Netlogon Elevation of Privilege (used in UWS attack) |
| **CVE-2021-21972** | vCenter RCE | High | Remote code execution in VMware vCenter |
| **CVE-2021-22986** | F5 BIG-IP RCE | High | Remote code execution in F5 BIG-IP |
| **CVE-2021-34527** | PrintNightmare | High | Windows Print Spooler RCE |

### Metasploit Framework
Used to simulate exploitation of identified vulnerabilities and validate risk assessments.

---

## 📊 Risk Analysis Models

### Risk Heat Map (Generated via Python)

| Risk ID | Risk Name | Likelihood | Impact | Score | Level |
|---------|-----------|------------|--------|-------|-------|
| **R1** | SQL Injection Attack | Low | High | 4 | Medium |
| **R2** | Ransomware Attack | Low-Medium | High-Critical | 4-5 | Medium-High |
| **R3** | Data Breach or Leakage | Low-Medium | High-Critical | 4-5 | Medium-High |
| **R4** | Data Loss or Corruption | Low-Medium | Medium-High | 3-4 | Medium |
| **R5** | Denial of Service Attack | Low-Medium | Medium-High | 3-4 | Medium |
| **R6** | Phishing/Social Engineering | Medium-High | - | 3-4 | Medium |

### DREAD Threat Analysis Model

| Threat ID | Threat Name | DREAD Score |
|-----------|-------------|-------------|
| **T1** | SQL Injection Attack | 7.6 |
| **T2** | Ransomware Attack | 7.4 |
| **T3** | Data Breach or Leakage | 7.0 |
| **T4** | Data Loss or Corruption | 5.8 |
| **T5** | Denial of Service Attack | 7.0 |
| **T6** | Phishing/Social Engineering | 7.4 |

### Risk Heatmap Visualization

*(Generated using Python/matplotlib – see [scripts folder](../../scripts/risk-heatmap-generator.ipynb) for code)*

![Risk Heatmap](https://via.placeholder.com/600x400?text=Risk+Heatmap+Generated+by+Python)

---

## 📋 Asset Register

| Asset Name | Asset Description | Users | Classification | Criticality |
|------------|-------------------|-------|----------------|-------------|
| **Student Records** | Personal, academic, and financial data | Student Services, Academic Staff | Confidential | High |
| **Staff Records** | Personal, payroll, contract data | HR, Payroll, Line Managers | Confidential | High |
| **Research Data** | Publications, datasets, ethics approvals | Researchers, Research Office | Public-Internal-Confidential | Medium-High |
| **Course Materials** | Syllabi, learning outcomes, assessments | Academic Staff, Students, QA | Public-Internal | Medium-High |

---

## 🛡️ NIST CSF Controls & Mitigation Strategies

### Selected Controls (NIST CSF Framework)

| Risk | Control Strategy | NIST CSF Subcategory | Duration | Cost |
|------|------------------|---------------------|----------|------|
| **SQL Injection** | Input validation, parameterized queries | DE.AE-1, DE.CM-1, DE.CM-7 | 3 months | $50,000 |
| **Ransomware** | Antivirus, backup, incident response plan | PR.DS-1, PR.DS-2, RS.CO-1 | 6 months | - |
| **Data Breach** | Encryption, access control, DLP | PR.AC-1, PR.DS-1, PR.DS-2 | 12 months | $200,000 |
| **Data Loss** | Backup, recovery systems, validation | PR.DS-1, PR.IP-4, RC.RP-1 | 9 months | - |
| **DoS Attack** | Firewalls, load balancers, segmentation | ID.AM-1, ID.BE-1, ID.RA-1 | Ongoing | - |

---

## 🎓 Security Training & Awareness Program

### Program Objectives
- Comply with NIST CSF, DOD, and New York State cybersecurity training policies
- Educate employees on security threats (ransomware, phishing, data breaches)
- Improve security skills (password management, data protection, incident response)

### Target Audience
- All employees (role-based training for managers, admins, researchers, general users)

### Topics Covered
- Security basics (CIA triad, risk management)
- Security threats (malware, phishing, social engineering)
- Security practices (password hygiene, data protection, incident reporting)

### Delivery Methods
- Video-based training (LMS-delivered)
- Interactive training (gamified modules)
- Phishing simulations (realistic attack simulations)

### Feedback & Evidence of Learning
- Pre/post-training quizzes
- Feedback forms
- Completion certificates
- Post-training surveys and interviews

---

## 📁 Files Included

- `Risk-Management-Report.pdf` – Full report with all tables, figures, and analysis
- `risk-heatmap-generator.ipynb` – Python notebook to generate risk heatmap (in `/scripts/`)

---

## 🔗 References

- BBC News: "Scottish university UWS targeted by cyber attackers" (2023)
- NIST Cybersecurity Framework (CSF)
- CVE Database (NVD)
- Trend Micro: Rhysida Ransomware Analysis
- ISACA: Considerations for Developing Cybersecurity Awareness Training

---

## 🧠 Skills Demonstrated

| Skill | Application |
|-------|-------------|
| **Cyber Threat Intelligence** | Incident analysis, threat actor profiling, attack vector identification |
| **Vulnerability Assessment** | Nessus scanning, CVE identification, Metasploit exploitation |
| **Risk Analysis** | Risk heat maps, DREAD modeling, asset classification |
| **Compliance & Governance** | NIST CSF alignment, GDPR considerations |
| **Security Controls** | Mitigation strategy design, cost-benefit analysis |
| **Security Training** | Program design, delivery methods, evaluation metrics |
| **Technical Writing** | Professional report structure, clear communication |
| **Data Visualization** | Python-based heatmap generation (matplotlib, seaborn) |

---
## 👤 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)
[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.22005797-0B1F3A.svg)](https://doi.org/10.5281/zenodo.22006734)
---

*Part of Academic Curriculum – 7BUIS020W Risk Management, University of Westminster*