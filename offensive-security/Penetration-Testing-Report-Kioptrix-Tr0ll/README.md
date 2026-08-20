# Penetration Testing Report – Kioptrix 1.2 & Tr0ll

## Overview
This repository contains a complete penetration testing report performed on two deliberately vulnerable virtual machines from VulnHub:

- **Kioptrix 1.2** – a Linux-based VM with multiple web and service vulnerabilities.
- **Tr0ll** – another Linux VM designed to be exploited through information disclosure and kernel flaws.

The assessment followed a structured methodology covering reconnaissance, scanning, exploitation, post‑exploitation, and remediation recommendations.

---

## Objectives
- Identify and exploit at least three distinct vulnerabilities (two on Kioptrix, one on Tr0ll).
- Gain initial access and, where possible, escalate privileges to root.
- Document every step with screenshots and technical explanations.
- Provide actionable fix recommendations for each discovered vulnerability.

---

## Tools Used
| Tool          | Purpose |
|---------------|---------|
| `nmap`        | Port scanning, service detection, OS fingerprinting |
| `netdiscover` | Network host discovery |
| `nikto`       | Web server vulnerability scanning |
| `gobuster`    | Directory and file brute‑forcing |
| `searchsploit`| Exploit database research |
| `sqlmap` (manual injection) | Authentication bypass via SQLi |
| `CrackStation`| MD5 hash cracking |
| `Wireshark`   | Packet capture analysis (`.pcap` files) |
| `Metasploit`  | (Attempted) framework for OpenFuck exploit |

---

## Key Findings (Exploited Vulnerabilities)

| Target     | Vulnerability | Exploit Used | Result |
|------------|---------------|--------------|--------|
| Kioptrix 1.2 | phpMyAdmin SQL Injection (login bypass) | `' OR 1=1 #` | Full phpMyAdmin access |
| Kioptrix 1.2 | Weak MD5 password storage | Hash cracking (Mast3r / starwars) | SSH access as `loneferret` |
| Tr0ll      | Anonymous FTP access + hidden directory disclosure | Download `lol.pcap` → find `/sup3rs3cr3tdirlol/` → discover password | SSH access as `overflow` |
| Tr0ll      | Overlayfs kernel exploit (CVE‑2015‑1328) | Public exploit 37292.c | Root privilege escalation |

> **All exploits were performed in an isolated lab environment using VMware.**

---

## Report Contents
- Full technical write‑up (PDF/DOCX) with:
  - Target system information
  - Screenshots of each phase (discovery, scanning, exploitation, privilege escalation)
  - Detailed step‑by‑step exploitation walkthroughs
  - Remediation steps for each vulnerability
  - General security recommendations
  - Lessons learned and challenges encountered

---

## Disclaimer
**This project was conducted solely for educational and ethical hacking purposes.**  
The vulnerabilities and exploits discussed here are against intentionally vulnerable VMs provided by VulnHub. Do **not** apply these techniques to any system without explicit written permission from the owner. The author assumes no liability for misuse of this information.

---

## References
- [Kioptrix 1.2 on VulnHub](https://www.vulnhub.com/entry/kioptrix-level-12-3,24/)
- [Tr0ll on VulnHub](https://www.vulnhub.com/entry/tr0ll-1,100/)
- [CVE‑2015‑1328 (Overlayfs)](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-1328)
- [Exploit‑DB entry 37292](https://www.exploit-db.com/exploits/37292)

---

## Author
**Your Name**  
[LinkedIn](your-linkedin-url) • [Portfolio](your-portfolio-url) • [Email](mailto:your-email)

---

*This report was prepared as part of a final project in ethical hacking.*