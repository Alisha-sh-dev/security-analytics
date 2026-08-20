# IPv6 Network Implementation – RIPng & OSPFv3

## 🌐 Overview

An IPv6 network implementation demonstrating **dynamic routing with RIPng and OSPFv3** across a multi-router topology using **Cisco Packet Tracer**.

**Technologies:** IPv6 | RIPng | OSPFv3 | Cisco IOS | Cisco Packet Tracer

## 🎯 Key Features

- IPv6 addressing and `/64` subnet configuration
- Multi-router network topology with **5 routers**
- RIPng distance-vector routing
- OSPFv3 link-state routing
- Inter-LAN connectivity testing
- IPv6 route and neighbor verification
- End-to-end ping validation

## 📊 Network Topology

- **5 Routers:** R0, R1, R2, R3, R4
- **3 LANs:** Connected through R0, R2, and R4
- **3 IPv6-enabled PCs**
- **5 Inter-router links**

### LAN Networks

| LAN | IPv6 Network | Gateway |
|---|---|---|
| LAN 1 | `3001:a::/64` | `3001:a::1` |
| LAN 2 | `3001:b::/64` | `3001:b::1` |
| LAN 3 | `3001:c::/64` | `3001:c::1` |

## 🔄 Routing Protocols

| Feature | RIPng | OSPFv3 |
|---|---|---|
| Type | Distance-Vector | Link-State |
| Administrative Distance | 120 | 110 |
| Protocol | UDP 521 | IP Protocol 89 |
| Multicast | `FF02::9` | `FF02::5`, `FF02::6` |
| Convergence | Slower | Faster |

## 🔧 Key Commands

```cisco
! Enable IPv6 Routing
ipv6 unicast-routing

! Configure IPv6 Address
interface GigabitEthernet0/0
ipv6 enable
ipv6 address 2001:a::1/64

! Enable RIPng
ipv6 rip RIPNG enable

! Configure OSPFv3
ipv6 router ospf 1
router-id 1.1.1.1

interface GigabitEthernet0/0
ipv6 ospf 1 area 0
```

## ✅ Verification

```cisco
show ipv6 interface brief
show ipv6 route
show ipv6 ospf neighbor
ping ipv6 3001:b::2
ping ipv6 3001:c::2
```

Successful connectivity was verified between all LAN segments and across the multi-router topology.

## 📁 Project Structure

```text
IPv6_Network_Implementation/
├── README.md
├── IPv6_Report.pdf
├── IPv6_RIPng.pkt
├── IPv6_OSPFv3.pkt
└── images/
    ├── topology.png
    ├── rip_config.png
    ├── ospf_config.png
    └── ping_results.png
```

## 🛠️ Requirements

- Cisco Packet Tracer 7.0+
- Basic knowledge of IPv6 and dynamic routing

## 👩‍💻 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)


**Module:** Principles of Computing – Advanced Networking  