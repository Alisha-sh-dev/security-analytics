# IPv4 Network Implementation – Subnetting & RIPv2

## 🌐 Overview

This project demonstrates an **IPv4 network implementation** using **VLSM subnetting, RIPv2 dynamic routing, and basic router security** in Cisco Packet Tracer.

**Technologies:** IPv4 | VLSM | RIPv2 | Cisco IOS | Cisco Packet Tracer

## 🎯 Key Features

- Private IPv4 network: `192.168.198.0/24`
- VLSM subnetting for efficient IP allocation
- 3 LAN segments using `/26` subnets
- 3 point-to-point WAN links using `/30` subnets
- RIPv2 dynamic routing with `no auto-summary`
- End-to-end connectivity testing
- Console, enable secret, and VTY password configuration

## 📊 IP Addressing

| Network | Hosts | Subnet |
|---|---:|---|
| LAN 1 | 60 | `192.168.198.0/26` |
| LAN 2 | 58 | `192.168.198.64/26` |
| LAN 3 | 48 | `192.168.198.128/26` |
| R1–R2 | 2 | `192.168.198.252/30` |
| R1–R3 | 2 | `192.168.198.248/30` |
| R2–R3 | 2 | `192.168.198.244/30` |

## 🔄 RIPv2 Configuration

```cisco
router rip
version 2
network 192.168.198.0
no auto-summary
```

## 🔐 Security Configuration

```cisco
enable secret cisco123

line console 0
password cisco
login

line vty 0 4
password cisco
login
```

## ✅ Verification

```cisco
show ip interface brief
show ip route
ping 192.168.198.66
ping 192.168.198.130
```

Successful connectivity was verified between all LANs and routers.

## 📁 Project Structure

```text
IPv4_Network_Implementation/
├── README.md
├── Network_Technologies_Report.pdf
├── IPv4_Subnetting_RIP.pkt
└── images/
    ├── topology.png
    ├── router_config.png
    ├── pc_config.png
    ├── ping_results.png
    └── security_config.png
```

## 🛠️ Skills Demonstrated

- IPv4 Addressing & VLSM
- Subnet Calculation
- RIPv2 Configuration
- Cisco Router Configuration
- Basic Network Security
- Network Troubleshooting
- Routing Table Analysis
- Cisco Packet Tracer

## 👩‍💻 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)


**Module:** Principles of Computing – Network Technologies  
