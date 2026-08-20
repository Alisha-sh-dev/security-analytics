# README.md

# M57 Patents Digital Forensics Investigation

> **A multi-source digital forensic investigation involving disk, USB, memory, network, email, and Windows artifact analysis.**

## Overview

This repository documents a structured digital forensic investigation based on the **M57 Patents data leakage scenario**. The investigation examines whether confidential intellectual property was accessed, prepared, transferred, or otherwise exposed through activity associated with the workstation assigned to **Jo Smith**.

The project brings together multiple forensic evidence sources and correlates findings across:

- Workstation disk image analysis
- USB/removable media analysis
- Windows Registry artifacts
- Memory forensics
- Network packet analysis
- Email artifact investigation
- File system and deleted artifact analysis
- Timeline reconstruction
- Cross-source evidence correlation

The objective is not simply to identify isolated suspicious artifacts. The investigation follows an evidence-driven approach to determine how individual artifacts relate to one another and to assess possible data exfiltration activity.

---

## Case Summary

M57 Patents developed proprietary patent-related and technical information. Following concerns regarding the possible exposure of confidential information, forensic examination was conducted on evidence associated with Jo Smith's workstation.

The available evidence includes a workstation disk image, a USB disk image, a Windows memory image, and a network capture. Additional artifacts, including email and Registry evidence, are examined from the workstation image where available.

The investigation focuses on answering the following questions:

- **Who** was associated with the relevant workstation activity?
- **What** confidential or patent-related information was accessed?
- **When** did significant events occur?
- **How** may information have been prepared, transferred, or exfiltrated?
- **Which evidence sources corroborate each finding?**
- **What conclusions can be supported by the available forensic evidence?**

---

## Investigation Objectives

The primary objectives of this investigation are to:

1. Preserve and document the integrity of all evidence.
2. Verify forensic evidence using cryptographic hashes.
3. Examine the workstation disk image for relevant files and user activity.
4. Identify patent-related, deleted, temporary, downloaded, and suspicious artifacts.
5. Investigate removable-media usage and USB-related activity.
6. Examine Windows Registry artifacts relevant to user and device activity.
7. Analyze the memory image for processes, command execution, files, Registry hives, and network artifacts.
8. Investigate the PCAP for HTTP, SMTP, DNS, and other potentially relevant communications.
9. Examine available email artifacts and identify evidence of external communications.
10. Reconstruct a unified timeline from multiple evidence sources.
11. Correlate findings without treating unsupported hypotheses as established facts.
12. Produce a reproducible and professionally documented forensic investigation.

---

## Evidence Sources

| Evidence ID | Evidence Source | Description |
|---|---|---|
| E01-001 | `jo-2009-12-10.E01` | Jo's workstation forensic disk image |
| E01-002 | `jo-work-usb-2009-12-11.E01` | USB/removable media forensic image |
| MEM-001 | `jo-2009-12-10.winddramimage` | Windows memory image |
| NET-001 | `net-2009-12-10-12:00.pcap.gz` | Network packet capture |
| EMAIL-001 | `jo-email.pst` / recovered artifacts | Email evidence obtained from workstation analysis where available |
| REG-001 | Windows Registry hives | Registry artifacts obtained from the workstation image |

> **Note:** The repository does not include the original forensic images or other large evidence files. Evidence must be obtained from the original public scenario source and handled in accordance with forensic best practices.

---

## Evidence Acquisition Sources

The original public scenario evidence is associated with the M57 Patents forensic dataset and includes the following evidence categories:

- Workstation disk image
- USB disk image
- Network capture
- Windows memory image

The evidence references supplied for this project are:

- Workstation: Digital Corpora M57 Patents dataset
- USB: Digital Corpora M57 Patents dataset
- Network capture: Digital Corpora M57 Patents dataset
- Memory image: Digital Corpora M57 Patents dataset

---

## Forensic Workflow

```text
                    ┌──────────────────────────┐
                    │     Evidence Collection   │
                    │ Disk │ USB │ RAM │ PCAP   │
                    └────────────┬─────────────┘
                                 │
                                 ▼
                    ┌──────────────────────────┐
                    │ Integrity Verification   │
                    │ MD5 │ SHA1 │ Documentation│
                    └────────────┬─────────────┘
                                 │
              ┌──────────────────┼──────────────────┐
              ▼                  ▼                  ▼
       ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
       │ Disk/USB    │    │ Memory      │    │ Network     │
       │ Forensics   │    │ Forensics   │    │ Forensics   │
       └──────┬──────┘    └──────┬──────┘    └──────┬──────┘
              │                  │                  │
              └──────────────────┼──────────────────┘
                                 ▼
                    ┌──────────────────────────┐
                    │ Artifact Correlation     │
                    │ Files │ Processes │ Logs │
                    └────────────┬─────────────┘
                                 │
                                 ▼
                    ┌──────────────────────────┐
                    │ Timeline Reconstruction  │
                    └────────────┬─────────────┘
                                 │
                                 ▼
                    ┌──────────────────────────┐
                    │ Findings & Assessment    │
                    │ Evidence-Based Conclusion│
                    └──────────────────────────┘
```

---

## Investigation Areas

### 1. Evidence Management

All evidence is documented before analysis. This includes evidence identification, integrity verification, hashing, evidence handling, and chain-of-custody documentation.

**Key activities:**

- MD5 verification
- SHA-1 verification
- Evidence inventory
- Read-only handling
- Working-copy procedures
- Chain-of-custody documentation

📁 [`02-Evidence-Management`](./02-Evidence-Management/)

---

### 2. Disk Forensics

The workstation image is examined for user activity and artifacts relevant to the investigation.

**Analysis areas include:**

- Patent-related files
- Recent file activity
- Downloads
- Temporary files
- Deleted artifacts
- Shortcut files
- Executable files
- Encryption-related software
- File metadata
- Timestamps

📁 [`03-Disk-Forensics`](./03-Disk-Forensics/)

---

### 3. USB Forensics

Removable media evidence is analyzed to identify:

- Files and folders present on the device
- Patent-related artifacts
- Modification timestamps
- Evidence of file staging
- Deleted or recoverable artifacts
- Correlation with Windows USB connection records

📁 [`04-USB-Forensics`](./04-USB-Forensics/)

---

### 4. Windows Registry Forensics

Registry artifacts are examined to reconstruct user and system activity.

**Target artifacts include:**

- `NTUSER.DAT`
- `UsrClass.dat`
- USB device artifacts
- `USBSTOR`
- RecentDocs
- UserAssist
- Mounted devices
- ShellBag artifacts
- Relevant application execution artifacts

📁 [`05-Windows-Registry`](./05-Windows-Registry/)

---

### 5. Memory Forensics

The Windows memory image is analyzed using Volatility to identify artifacts that may not be recoverable from disk alone.

**Analysis includes:**

- Operating system identification
- Process enumeration
- Process relationships
- Suspicious process investigation
- Command history
- Console activity
- Network connections
- File objects
- Loaded Registry hives
- Encryption-related processes

📁 [`06-Memory-Forensics`](./06-Memory-Forensics/)

---

### 6. Network Forensics

The PCAP is examined to identify and correlate network activity associated with the workstation.

**Protocols and artifacts examined include:**

- HTTP
- HTTP POST requests
- SMTP
- DNS
- Other outbound traffic
- Destination systems
- Session timing
- Data volumes where available

The presence of network traffic alone is not treated as proof of data theft. Findings are assessed in conjunction with disk, memory, USB, and other available evidence.

📁 [`07-Network-Forensics`](./07-Network-Forensics/)

---

### 7. Email Forensics

Available email evidence and email-related artifacts are examined to identify:

- External recipients
- Email client activity
- Attachment-related artifacts
- Relevant timestamps
- Correlation with SMTP traffic

Where a complete PST archive is unavailable or cannot be recovered, this limitation is explicitly documented rather than assuming its contents.

📁 [`08-Email-Forensics`](./08-Email-Forensics/)

---

### 8. Timeline Reconstruction

Artifacts from multiple evidence sources are normalized and correlated to reconstruct significant events.

Potential sources include:

```text
Disk Timestamps
      │
USB Activity
      │
Registry Events ───────► MASTER TIMELINE ◄────── Memory Activity
      │
Network Sessions
      │
Email Artifacts
```

Each event is linked to its supporting evidence source and assessed according to the strength of the available evidence.

📁 [`09-Timeline-Reconstruction`](./09-Timeline-Reconstruction/)

---

## Tools Used

| Tool | Purpose |
|---|---|
| FTK Imager | Evidence examination and forensic image handling |
| Autopsy | File system and artifact analysis |
| Volatility | Memory forensic analysis |
| Wireshark | Packet and network traffic analysis |
| Tshark | Command-line packet analysis |
| EWF Tools | E01 image handling and mounting |
| Hash Utilities | Evidence integrity verification |
| Python | Artifact processing and automation |
| Bash | Forensic workflow automation |

---

## Key Forensic Skills Demonstrated

```text
Digital Evidence Handling
        │
        ├── Hash Verification
        ├── Chain of Custody
        └── Forensic Soundness
                │
                ▼
      Multi-Source Investigation
                │
     ┌──────────┼──────────┐
     ▼          ▼          ▼
   DISK       MEMORY     NETWORK
     │          │          │
     └──────────┼──────────┘
                ▼
        Evidence Correlation
                │
                ▼
      Timeline Reconstruction
                │
                ▼
     Evidence-Based Assessment
```

---

## Repository Structure

```text
M57-Patents-Digital-Forensics-Investigation/
│
├── README.md
│
├── 01-Case-Overview/
│   ├── Case-Background.md
│   ├── Investigation-Scope.md
│   └── Objectives.md
│
├── 02-Evidence-Management/
├── 03-Disk-Forensics/
├── 04-USB-Forensics/
├── 05-Windows-Registry/
├── 06-Memory-Forensics/
├── 07-Network-Forensics/
├── 08-Email-Forensics/
├── 09-Timeline-Reconstruction/
├── 10-Tools-And-Commands/
├── 11-Findings/
├── 12-Visualizations/
├── 13-Scripts/
└── 14-Final-Report/
```

---

## Methodology

This project follows an evidence-driven forensic methodology:

1. **Identify** evidence sources and investigation requirements.
2. **Preserve** original evidence and maintain integrity.
3. **Verify** evidence using cryptographic hashes.
4. **Examine** each evidence source using appropriate forensic tools.
5. **Document** commands, methodology, artifacts, and observations.
6. **Validate** findings across independent evidence sources where possible.
7. **Correlate** timestamps, user activity, processes, files, and network events.
8. **Assess** competing explanations and limitations.
9. **Report** conclusions according to the strength of available evidence.

---

## Evidence Assessment Model

Findings in this repository are categorized according to evidentiary support:

| Level | Meaning |
|---|---|
| **Verified** | Directly supported by identified forensic artifacts |
| **Corroborated** | Supported by two or more independent evidence sources |
| **Indicated** | Evidence suggests the activity but does not conclusively prove it |
| **Hypothesis** | A possible explanation requiring further validation |
| **Not Established** | Available evidence is insufficient to support a conclusion |

This distinction is used to avoid overstating forensic conclusions.

---

## Important Limitations

- Original forensic evidence is not redistributed in this repository.
- Some artifacts require extraction directly from the forensic images.
- A missing or unrecovered artifact is not treated as proof that an event did or did not occur.
- Encrypted network traffic may limit content-level inspection.
- Network traffic must be correlated with other evidence before being classified as confirmed data exfiltration.
- USB connection evidence does not independently prove that confidential files were copied.
- All conclusions are based on the evidence available within the investigation scope.

---

## Final Deliverables

The completed project will contain:

- Evidence inventory
- Hash verification records
- Chain-of-custody documentation
- Disk forensic findings
- USB forensic findings
- Registry forensic findings
- Memory forensic findings
- Network forensic findings
- Email artifact findings
- Master timeline
- Evidence correlation analysis
- Automation scripts
- Investigation visualizations
- Final forensic report

---

## Disclaimer

This repository is created for **digital forensics education, cybersecurity portfolio demonstration, and lawful forensic analysis of publicly available training evidence**.

The original evidence belongs to its respective dataset provider. This repository documents analysis methodology and findings and does not claim ownership of the original forensic images.

---

## Author

**Alisha Sh**

Cybersecurity | Digital Forensics | Incident Response | Network Security

### Focus Areas

`Digital Forensics` · `Memory Forensics` · `Network Forensics` · `Disk Forensics` · `Incident Response` · `Threat Analysis`

---

⭐ If you find this investigation useful, consider starring the repository.