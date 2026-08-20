# Dunder Mifflin – Network Infrastructure Project

## 📖 Overview
This project documents the deployment and configuration of a **Windows Server 2019** network infrastructure for Dunder Mifflin’s Scranton branch. It covers domain services, DHCP, virtualization, storage redundancy, and centralized update management to meet business requirements.

---

## 🏢 Departments & Organizational Units
| Department            | OU Name       | Employees | Notes                                      |
|-----------------------|---------------|-----------|--------------------------------------------|
| Sales                 | Sales_Dept    | 6         | Client-facing; CRM software only            |
| Accounting            | Accounting    | 3         | Compliance-sensitive; payroll & billing     |
| IT Administration     | IT_Admins     | 4         | Dwight’s team; manages infrastructure       |
| Warehouse             | Warehouse     | 2         | Shared workstations, shift-based            |
| Executive Management  | Executives    | 1         | Leadership (Michael only)                   |

---

## 🖥️ Current Environment
- **Primary Server:** TN-SRV01  
- **OS:** Windows Server 2019 Datacenter (Desktop Experience)  
- **Domain:** `dundermifflin.local`  
- **Roles Completed:** AD DS, DNS  
- **Storage:** 1× 500 GB SSD (OS), 3× 2 TB HDDs (data pool)  

---

## 📌 Business Requirements
1. **Resource Optimization:** Deploy TN-SRV02 with Server Core  
2. **IP Management:** DHCP for automatic IP assignment  
3. **Virtualization:** Hyper-V VMs on TN-SRV02  
4. **Storage Redundancy:** Storage Spaces with ReFS  
5. **Centralized Updates:** WSUS for local update management  

---

## 🛠️ Key Configurations

### Q1 – Server Deployment
- **Install Option:** Windows Server 2019 Server Core  
- **Tool:** Sconfig for IP, computer name, and domain join  

### Q2 – Network Services
- **DHCP Role:** Installed on TN-SRV01 for IP automation  
- **DNS Role:** Required for AD DS, authentication, and SRV records  

### Q3 – Virtualization & User Management
- **Hyper-V Checkpoint:** VM recovery without reinstall  
- **GPO:** Restrict Control Panel for Sales_Dept via Group Policy  

### Q4 – Storage Configuration
- **Technology:** Storage Spaces (redundancy without RAID controller)  
- **File System:** ReFS for Hyper-V workloads (.vhdx integrity & performance)  

### Q5 – Update Management
- **Role:** WSUS for centralized updates  
- **Benefit:** Bandwidth reduction via local distribution  

### Q6 – Monitoring & Troubleshooting
- **Performance Monitoring:** Task Manager (CPU, memory, disk, network)  
- **DHCP Diagnosis:** Event Viewer logs for error codes and failures  

---

## 🗺️ Deployment Roadmap
| Step | Task                          |
|------|-------------------------------|
| Q1   | Deploy TN-SRV02 (Server Core) |
| Q2   | Add DHCP + DNS                |
| Q3   | Run VMs + Apply GPOs          |
| Q4   | Configure Storage Spaces      |
| Q5   | Set up WSUS                   |
| Q6   | Monitor & Troubleshoot        |

---

## 🏗️ Network Architecture
- **Primary Server (TN-SRV01):** Domain Controller, DNS, DHCP, Storage Spaces  
- **Secondary Server (TN-SRV02):** Hyper-V host (Server Core)  
- **Domain:** `dundermifflin.local`  
- **Clients:** ~20 workstations across departments  
- **Storage Layout:**  
  - Physical: 1× 500 GB SSD + 3× 2 TB HDDs  
  - Storage Pool: 6 TB pooled capacity  
  - Virtual Disk: ~4 TB RAID-5 (ReFS)  

---

## 🛠️ Technologies Used
- Windows Server 2019 Datacenter  
- Active Directory Domain Services (AD DS)  
- DNS Server  
- DHCP Server  
- Hyper-V  
- Storage Spaces + ReFS  
- WSUS  
- Group Policy Management  
- Event Viewer  

---

## 👩‍💻 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)

---

## 📜 License
Educational use only. Free to adapt for learning network security concepts.
**Module:** Principles of Computing – Network Technologies  
