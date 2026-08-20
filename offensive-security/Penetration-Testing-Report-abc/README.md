# Penetration Testing Report – ABC Company

## 📖 Overview

This report presents the findings from a comprehensive penetration testing engagement conducted for **ABC Company**, a leading manufacturer of electrical components for "smart cities." The assessment evaluated the security posture of the company's website and network infrastructure using a **Red/Blue/Purple Team** methodology.

---

## 🎯 Objectives

- Conduct **OSINT and information gathering** to identify digital footprints
- Assess **network security** through scanning and vulnerability detection
- Evaluate **web application security** (WordPress site)
- Examine **end-user devices and configurations**
- **Business impact assessment** of identified vulnerabilities
- Provide **actionable recommendations** for remediation

---

## 🏗️ Methodology

### Teams

| Team | Role |
|------|------|
| **Red Team** | Conducted network/web assessments, identified vulnerabilities, simulated attacks |
| **Blue Team** | Analyzed attacks, assessed defensive readiness, proposed mitigation |
| **Purple Team** | Evaluated defensive tactics, compared controls, provided justifications |

### Standards
- **NIST Cybersecurity Framework** – Used as the assessment standard

---

## 🔍 Key Findings

### OSINT & Information Gathering
| Technique | Findings |
|-----------|----------|
| **WHOIS Lookup** | Domain: `cwscenario.site`, Registrar: IONOS SE, DNSSEC: Unsigned |
| **DNS Enumeration** | Authoritative DNS servers, mail server records |
| **Google Dorking** | Discovered exposed directories |
| **Ping & Reverse DNS** | IP: `217.160.0.219`, Hostname: `217-160-0-219.elastic-ssl.ui-r.com` |
| **Port Scanning (Nmap)** | Open: 80 (HTTP), 81 (HTTP), 443 (HTTPS) – Nginx server |

### Network Assessment
- **Open Ports:** 80/tcp, 81/tcp, 443/tcp
- **Filtered Ports:** 914 TCP ports (firewall likely present)
- **Services Detected:** Nginx web server on all open ports
- **Wireshark Analysis:** Identified HTTP GET requests, Firefox 102.0 user agent

### Web Application Assessment
| Tool | Findings |
|------|----------|
| **Nikto** | XSS vulnerabilities in `myphpnuke`, `Post Nuke 0.7.2.3-Phoenix` |
| **theHarvester** | 3 IPs, 10 hosts discovered (cpanel, mail, webmail subdomains) |
| **wafw00f** | WAF detected (503 response on XSS attack strings) |
| **WPScan** | WordPress 6.2.2, Theme: `radiate` (v1.4.0), Apache server |

### End-User Assessment
- **OS Fingerprinting:** Microsoft Windows XP SP3 (99% confidence)
- **Subdomain Enumeration:** Used `sublist3r` to discover cpanel, mail, webmail subdomains

### Post-Exploitation
- **enum4linux:** Used to gather SMB information about the target system

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| `whois` | Domain registration lookup |
| `dnsrecon` | DNS enumeration |
| `nmap` | Port scanning, service detection, OS fingerprinting |
| `Wireshark` | Network traffic analysis |
| `Nikto` | Web application vulnerability scanning |
| `theHarvester` | Email and subdomain enumeration |
| `wafw00f` | Web Application Firewall detection |
| `WPScan` | WordPress vulnerability scanning |
| `sublist3r` | Subdomain enumeration |
| `enum4linux` | SMB enumeration |

---

## 📊 Business Impact Assessment

| Impact Area | Assessment |
|-------------|------------|
| **Confidentiality** | Weak authentication, unpatched software could expose sensitive data |
| **Integrity** | Weak input validation could allow data manipulation |
| **Availability** | Lack of network segmentation could enable DoS attacks or lateral movement |

---

## ✅ Recommendations

1. **Stronger Authentication** – Enforce complex passwords, implement MFA
2. **Regular Patching** – Establish a patch management process
3. **Access Controls** – Implement least privilege principles
4. **Encryption** – Use modern algorithms for data at rest and in transit
5. **Web Application Security** – Input validation, code reviews, WAF deployment
6. **Network Segmentation** – Separate security zones to limit breach impact

---

## 🔗 Target Environment

- **Domain:** `cwscenario.site`
- **IP Address:** `217.160.0.219`
- **Hosting:** IONOS SE (elastic-ssl infrastructure)

---

*Part of Academic Curriculum – Fundamentals of Security Technology, University of Westminster*