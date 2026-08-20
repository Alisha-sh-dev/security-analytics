# Network Performance Analysis – Wi-Fi vs Mobile Hotspot

## Project Overview
A comprehensive network performance analysis project comparing direct Wi-Fi connectivity versus mobile hotspot (Wi-Fi sharing) using industry-standard network analysis tools. This project showcases my ability to capture, analyze, and interpret network traffic using Wireshark, measure Quality of Service (QoS) metrics, and provide data-driven recommendations for network optimization.

**Core Technologies:** Wireshark Packet Analysis | Network Performance Metrics | QoS Analysis | Protocol Hierarchy Analysis | Traffic Visualization | Network Troubleshooting

---

## 🎯 Objectives
- Capture and analyze network traffic using Wireshark  
- Measure QoS metrics: bandwidth, throughput, latency, packet loss  
- Compare Wi-Fi and mobile hotspot performance  
- Identify causes of performance degradation and propose optimizations  

---

## 🛠️ Methodology
1. **Wi-Fi Configuration:** Internet → Router → Computer  
2. **Hotspot Configuration:** Internet → Router → Phone → Computer  
3. **Tools Used:** Wireshark, Speedtest.net, Ping, Traceroute  
4. **Metrics Captured:** Download/Upload speed, latency, hops, packet loss  

---

## 📊 Key Findings
| Metric | Wi-Fi | Hotspot | Difference |
|--------|--------|----------|-------------|
| **Download Speed** | 29.45 Mbps | 12.96 Mbps | ↓ 56% |
| **Upload Speed** | 28.76 Mbps | 10.64 Mbps | ↓ 63% |
| **Ping** | 42 ms | 113 ms | ↑ 169% |
| **Packet Loss** | 0% | 0% | — |
| **IPv6 Support** | ✅ | ❌ | Hotspot lacks IPv6 |

**Root Cause:** Double wireless transmission, medium contention, and processing delay on the phone lead to reduced throughput and higher latency.

---

## 🔧 Recommendations
| Priority | Action | Impact |
|----------|---------|--------|
| **High** | Use USB tethering instead of Wi-Fi hotspot | Eliminates double-hop latency |
| **High** | Place phone closer to router | Improves signal strength |
| **Medium** | Use 5GHz band | Reduces interference |
| **Low** | Close background apps | Frees processing resources |

---

## 🛡️ Security & Ethics
- Capture only authorized network traffic  
- Anonymize sensitive data before sharing  
- Follow organizational privacy policies  

---

## 📂 Project Files
- `Network_Performance_Analysis_Report.pdf` – Full report  
- `WiFi_Capture.pcapng` – Wi-Fi traffic capture  
- `Hotspot_Capture.pcapng` – Hotspot traffic capture  
- `Performance_Metrics_Comparison.csv` – Data summary  

---

## 🔗 Connect
**Alisha Sh**  
GitHub: [@Alisha-sh-dev](https://github.com/Alisha-sh-dev)  
LinkedIn: [Alisha Sh](https://linkedin.com/in/Alisha-Sh)
