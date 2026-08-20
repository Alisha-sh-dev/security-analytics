# Cisco Packet Tracer – Static Routing & Web Server Project

## 📖 Overview
This project builds a multi-router network topology in **Cisco Packet Tracer** using **static routing** to enable full connectivity between all devices. It includes PCs, laptops, routers, and servers, with an **HTTP server** hosting a website accessible via a custom domain name.

---

## 🔑 Key Tasks Completed
- **Network Topology:** Designed and implemented as per provided diagram.  
- **IP Addressing:** Assigned across 8 subnets.  
- **Device Configuration:** PCs, laptops, routers, and servers configured.  
- **Static Routing:** Routes added on all routers for end-to-end communication.  
- **Connectivity Testing:** Verified successful communication between devices.  
- **Web Server Setup:** HTTP server configured with domain name resolution via DNS.  

---

## 🌐 Network Subnets
| Subnet | Network Address | Usable Range |
|--------|-----------------|--------------|
| 1 (Router0–Router1) | 192.168.1.0/24 | 192.168.1.1 – 254 |
| 2 (Router0–Router3) | 192.168.2.0/24 | 192.168.2.1 – 254 |
| 3 (Router1–Router2) | 192.168.3.0/24 | 192.168.3.1 – 254 |
| 4 (Router2–Router3) | 192.168.4.0/24 | 192.168.4.1 – 254 |
| 5 (Switch2–Servers) | 192.168.10.0/24 | 192.168.10.1 – 254 |
| 6 (Switch0–Laptops) | 192.168.20.0/24 | 192.168.20.1 – 254 |
| 7 (Switch1–PC1, PC2) | 192.168.30.0/24 | 192.168.30.1 – 254 |
| 8 (Router1–PC0) | 192.168.40.0/24 | 192.168.40.1 – 254 |

---

## ⚙️ Device Configurations
- **Routers:** Static routes configured; verified with `show ip route`.  
- **Servers:**  
  - HTTP server with static IP and website content.  
  - DNS server resolving domain name to HTTP server IP.  
- **PCs/Laptops:** Assigned IPs within respective subnets.  

---

## ✅ Connectivity Testing
- Laptop0 → PC0: Successful  
- Laptop1 → PC1: Successful  
- All devices communicate across the network.  

---

## 🌍 Web Server Access
- Domain name: `group[number].com` (replace with your group number).  
- PC2 accessed the HTTP server via browser.  
- Website displayed correctly.  

---

## 🛠️ Technologies Used
- Cisco Packet Tracer  
- Static Routing  
- HTTP Web Services  
- DNS Resolution  
- DHCP (optional, not used in this lab)  

---

## 👩‍💻 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)

---

## 📜 License
Educational use only. Free to adapt for learning network security concepts.
**Module:** Principles of Computing – Network Technologies  
