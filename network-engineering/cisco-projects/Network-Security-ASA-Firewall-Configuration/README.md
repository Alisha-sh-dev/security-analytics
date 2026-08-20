# Network Security Project – ASA Firewall Configuration

## 📖 Overview
This project implements a secure multi-zone network topology using **Cisco Packet Tracer**, featuring an **ASA 5505 firewall** with comprehensive security policies. The design connects two separate company networks (Company A and Company B) through a **DMZ**, demonstrating proper segmentation, controlled access, and layered security.

---

## 🔑 Key Features
- **Multi-zone Architecture:**  
  - Company A – `192.168.10.0/24`  
  - Company B – `192.168.20.0/24`  
  - DMZ – `172.16.1.0/24`  

- **ASA Firewall Security:** Access Control Lists (ACLs) enforce strict traffic rules.  
- **DHCP Services:** Automated IP allocation for workstations.  
- **Web Services:** Public website hosted in DMZ; internal website restricted.  
- **DNS Resolution:** Domain name mapping for web services.  

---

## 🛡️ Security Implementation
- **ICMP Restriction:** Company B cannot ping Company A hosts.  
- **Selective Web Access:**  
  - Company B → Public website ✅ Allowed  
  - Company B → Internal website ❌ Blocked  
- **Network Segmentation:** Internal resources isolated from public-facing servers.  

---

## 🛠️ Technologies Used
- Cisco Packet Tracer  
- ASA 5505 Firewall  
- Cisco 2901 Router  
- DHCP Services  
- HTTP Web Services  
- DNS Services  

---

## ⚙️ Setup Instructions
1. Open the provided **Packet Tracer (.pkt)** file.  
2. Devices are pre-configured with static IPs, DHCP, and routing.  
3. ASA firewall ACLs are applied to enforce policies.  
4. Workstations obtain IP addresses automatically via DHCP.  

---

## ✅ Verification Tests
- **Ping Test:** Company B → Company A → Blocked (as required).  
- **Public Website Access:** Company B → DMZ → Allowed.  
- **Internal Website Access:** Company B → Internal → Blocked.  
- **DHCP Assignment:** All workstations receive IPs automatically.  

---

## 👩‍💻 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)

---

## 📜 License
Educational use only. Free to adapt for learning network security concepts.
**Module:** Principles of Computing – Network Technologies  
