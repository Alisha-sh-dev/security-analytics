# M57 Patents Data Leakage Investigation

## 📖 Case Overview

This is a comprehensive **digital forensics investigation** into a suspected intellectual property theft at **M57 Patents**, a renewable energy storage company based in San Jose.

### Case Summary

| Detail | Information |
|--------|-------------|
| **Organization** | M57 Patents (Renewable Energy Storage) |
| **Incident Date** | July 2018 (Suspicious activity detected) |
| **Suspect** | Jo Smith, Senior Engineer (resigned recently) |
| **Evidence** | Confidential battery design files appeared on competitor's website |
| **Exfiltration Method** | Email (primary), with USB staging and encryption software |

---

## 🎯 Investigation Objectives

1. Determine **if** data exfiltration occurred
2. Identify **what** data was stolen (patent-related files)
3. Establish **when** and **how** the data was exfiltrated
4. Identify the **culprit** (Jo Smith)
5. Maintain **forensic integrity** for potential legal proceedings

---

## 📁 Evidence Analyzed

| Evidence Type | File Name | Description |
|---------------|-----------|-------------|
| **Disk Image** | `jo-2009-12-10.E01` | Jo Smith's workstation (Jo-PC) |
| **USB Image** | `jo-work-usb-2009-12-11.E01` | External drive found at Jo's desk |
| **Memory Dump** | `jo-2009-12-10.winddramimage` | RAM capture from Jo's workstation |
| **Network Capture** | `net-2009-12-10-12_00.pcap.gz` | Network traffic during exfiltration |
| **Email Archive** | `jo-email.pst` | Jo's mailbox (partial recovery) |

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| **FTK Imager** | Forensic imaging, evidence acquisition, hash verification |
| **Autopsy** | Disk analysis, file recovery, metadata extraction |
| **Volatility** | Memory forensics, process analysis, command history |
| **Wireshark** | Network analysis, traffic filtering, protocol examination |
| **Kernel PST Viewer** | Email archive analysis |

---

## 🔍 Key Findings

### 1. Evidence Handling & Integrity

- ✅ **MD5 and SHA1 hash values** verified for all evidence files
- ✅ **Chain-of-custody** documented for all evidence transfers
- ✅ **Write-blocking** used during acquisition (FTK Imager)
- ✅ **Legal authorization** obtained from company management
- ✅ **Personal data** handled with confidentiality and redaction

### 2. Disk Analysis (Autopsy/FTK Imager)

| Finding | Details |
|---------|---------|
| **Patent Files** | Found in `Documents\Designs\BatteryProject` and `Desktop\web\` |
| **USB Connection** | Imation USB drive connected on December 10, 2009 |
| **Deleted Files** | `HybridBattery.zip` recovered from Recycle Bin |
| **Encryption** | TrueCrypt 6.3a installed on December 4, 2009 |
| **Email Artifacts** | `sendmail.dll` and Python email libraries found |
| **USB Contents** | `Papers1` – `Papers17` folders (potential patent copies) |

### 3. Memory Analysis (Volatility)

| Process | PID | Significance |
|---------|-----|--------------|
| **cmd.exe** | 2628 | Command-line activity detected |
| **jo.exe** | 2876 | **HIGHLY SUSPICIOUS** – unknown executable dumping memory |
| **TrueCrypt.exe** | 3796 | Encryption software actively running |
| **msimn.exe** | 2068 | Outlook Express email client active |

**Critical Command Found:**
```cmd
jo.exe /d /f z:\ram\jo-2009-12-10.dmp