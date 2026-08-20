# IPv6 Dynamic Routing – RIPng & OSPFv3

## 📖 Overview
A comprehensive enterprise-grade IPv6 network implementation demonstrating two dynamic routing protocols: **RIPng (Routing Information Protocol Next Generation)** and **OSPFv3 (Open Shortest Path First Version 3)** . This project showcases my ability to design, configure, and troubleshoot complex IPv6 networks using Cisco Packet Tracer, implementing both distance-vector and link-state routing protocols in a production-like environment.

**Core Technologies:** IPv6 Addressing | RIPng (Distance-Vector) | OSPFv3 (Link-State) | EUI-64 Format | Cisco IOS | Network Simulation | Multi-Protocol Comparison

---

## 🎯 Objectives
- Implement IPv6 addressing (Global Unicast, Link-Local, Unique Local)
- Configure RIPng (UDP port 521, multicast `FF02::9`)
- Configure OSPFv3 (SPF algorithm, DR/BDR election, IPsec support)
- Compare protocol performance: convergence, scalability, and use cases

---

## 🛠️ Implementation
1. **IPv6 Base Setup**  
   - Enabled IPv6 routing (`ipv6 unicast-routing`)  
   - Configured EUI-64 and manual addressing  

2. **RIPng Configuration**  
   - Enabled RIPng on interfaces  
   - Verified with `show ipv6 route rip`  

3. **OSPFv3 Configuration**  
   - Set router IDs  
   - Verified adjacencies with `show ipv6 ospf neighbor`  

4. **Protocol Comparison**  
   - Analyzed convergence, scalability, and security features  

---

## 📊 Topology
- **Routers:** 5 (Cisco 1941/2911)  
- **LANs:** 3 (IPv6-enabled PCs)  
- **Links:** 5 inter-router connections  
- **Addressing:** `2001::/64` (WAN), `3001::/64` (LANs)

---

## ✅ Verification
- Successful LAN-to-LAN communication  
- Full mesh IPv6 routing tables  
- RIPng & OSPFv3 routes confirmed via CLI  

---

## 🧠 Key Insights
- RIPng: Simple, limited to small networks (<15 hops)  
- OSPFv3: Scalable, faster convergence, supports IPsec  
- Practical knowledge for IPv4-to-IPv6 migration strategies  

---

## 🚀 Usage
**Prerequisites:** Cisco Packet Tracer 7.0+, IPv6 basics  
- Open `IPv6_RIPng.pkt` → verify with `show ipv6 route rip`  
- Open `IPv6_OSPFv3.pkt` → verify with `show ipv6 route ospf`  
- Test connectivity with `ping ipv6 <destination>`  

---

## 🔗 Connect
**Alisha Sh**  
GitHub: [@Alisha-sh-dev](https://github.com/Alisha-sh-dev)  
LinkedIn: [Alisha Sh](https://linkedin.com/in/Alisha-Sh)
