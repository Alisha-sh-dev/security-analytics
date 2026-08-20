# MBR vs. GPT Partitioning Analysis – Research Reports

## 📖 Overview

This folder contains **three comprehensive research reports** analyzing the architectural, technical, and security differences between the **Master Boot Record (MBR)** and **GUID Partition Table (GPT)** partitioning schemes.

These reports were produced as part of university coursework in *Fundamentals of Security Technology* (University of Westminster) and demonstrate:

- **Practical partitioning skills** (Windows Disk Management, DiskPart, Linux fdisk/gdisk)
- **Hexadecimal analysis** (HxD hex editor, raw disk forensics)
- **Security vulnerability assessment** (MBR bootkits, GPT redundancy, Secure Boot)
- **Academic research methodology** (structured analysis, references, comparative tables)

---

## 📁 Files Included

| File | Description |
|------|-------------|
| `MBR-vs-GPT-Report-1.pdf` | Comprehensive analysis with practical methodology (student ID-based partitions, hex dumps, endianness conversion). |
| `MBR-vs-GPT-Report-2.pdf` | University specification report with architectural comparisons and security implications. |
| `MBR-vs-GPT-Report-3.pdf` | Detailed configuration report with both MBR and GPT setups, screenshots, and conclusions. |

---

## 🔬 Key Technical Concepts Covered

### Architectural Differences
- **Maximum partitions:** MBR = 4 primary (or 3 + 1 extended) vs. GPT = 128 partitions
- **Disk size limits:** MBR = 2TB max vs. GPT = 9.4ZB (zettabytes)
- **Sector sizes:** MBR (512 bytes fixed) vs. GPT (512, 4K, 16K, 128K flexible)
- **Endianness:** Both use little-endian, but GPT uses 64-bit fields

### Security Implications
- **MBR Vulnerabilities:** Bootkit attacks, limited Secure Boot support, no redundancy
- **GPT Advantages:** Backup partition headers, CRC32 checksums, UEFI Secure Boot integration
- **Attacker Techniques:** Malware infections, disk-wiping attacks, Advanced Persistent Threats (APTs)

### Practical Skills Demonstrated
- Creating MBR and GPT partitions using Windows Disk Management and Linux commands
- Converting MBR to GPT using DiskPart (`convert gpt`)
- Creating DD disk images (`dd if=/dev/sda of=mbr.dd bs=512 count=1`)
- Analyzing raw partition tables with **HxD Hex Editor**
- Converting between little-endian and big-endian representations
- Identifying file systems (Ext4, exFAT, NTFS) from hex dumps

---

## 📸 Example Screenshots

*(Some screenshots from the reports:)*

- MBR partition table in Disk Management
- GPT partition layout with 3 partitions
- Hex analysis of MBR showing `55 AA` signature
- GPT header showing `EFI PART` signature
- Comparison of sector sizes (4K, 16K, 128K)

---

## 🛡️ Relevance to Cybersecurity

These reports are highly relevant to **offensive and defensive cybersecurity**:

| Domain | Relevance |
|--------|-----------|
| **Digital Forensics** | Hex analysis, partition recovery, file system identification |
| **Boot Security** | Understanding MBR bootkits, Secure Boot, UEFI |
| **Data Integrity** | GPT redundancy vs. MBR single point of failure |
| **System Hardening** | Choosing GPT for modern secure systems |
| **Incident Response** | Recovering from MBR corruption or bootkit infections |

---

## 📚 References

The reports cite authoritative sources including:
- Microsoft Learn (UEFI/GPT partitioning)
- FreeCodeCamp, EaseUS, How-To Geek
- Intel UEFI specifications

---

## 🎯 Learning Outcomes

Through these reports, I gained:
- Hands-on experience with disk partitioning tools (Windows and Linux)
- Understanding of low-level storage architectures
- Ability to analyze raw disk data using hex editors
- Knowledge of security trade-offs between legacy and modern systems

---

*Part of Academic Curriculum – 7COSC003 Fundamentals of Security Technology, University of Westminster*