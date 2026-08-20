# Evidence Inventory

## Purpose

This inventory records the digital evidence examined during the M57 Patents Digital Forensics Investigation.

Each evidence item receives a unique identifier to maintain traceability throughout:

- Evidence handling
- Integrity verification
- Analysis
- Artifact extraction
- Timeline reconstruction
- Final reporting

---

## Evidence Register

| Evidence ID | Evidence File | Evidence Type | Primary Analysis |
|---|---|---|---|
| E01-001 | `jo-2009-12-10.E01` | Workstation disk image | Disk, file system, Registry, email artifacts |
| E01-002 | `jo-work-usb-2009-12-11.E01` | USB forensic image | USB file-system analysis |
| MEM-001 | `jo-2009-12-10.winddramimage` | Windows memory image | Memory and volatile artifact analysis |
| NET-001 | `net-2009-12-10-12:00.pcap.gz` | Network packet capture | Network communication analysis |
| EMAIL-001 | `jo-email.pst` / recovered artifacts | Email evidence | Email and recipient analysis |
| REG-001 | Extracted Registry hives | Windows Registry evidence | User and device activity |

---

# E01-001 — Workstation Disk Image

**Evidence ID:** E01-001  
**File Name:** `jo-2009-12-10.E01`  
**Type:** EnCase Expert Witness Format forensic image  
**System:** Jo's workstation  
**Primary Purpose:** Examination of persistent digital artifacts

### Planned Analysis Areas

- File system
- User directories
- Documents
- Downloads
- Temporary files
- Deleted artifacts
- Shortcut files
- Executables
- Email-related artifacts
- Registry hives
- USB connection history

### Status

**Integrity Verification:** To be documented in `Hash-Verification.md`  
**Analysis:** In progress / documented by investigation section  
**Original Evidence:** Preserved separately from analysis outputs

---

# E01-002 — USB Forensic Image

**Evidence ID:** E01-002  
**File Name:** `jo-work-usb-2009-12-11.E01`  
**Type:** EnCase Expert Witness Format forensic image  
**System:** USB/removable storage device  
**Primary Purpose:** Examination of files and removable-media artifacts

### Planned Analysis Areas

- File inventory
- Directory structure
- Relevant documents
- File timestamps
- Deleted files
- Recoverable artifacts
- Patent-related material
- Evidence of potential staging

### Status

**Integrity Verification:** To be documented in `Hash-Verification.md`  
**Analysis:** To be documented in `04-USB-Forensics/`

---

# MEM-001 — Windows Memory Image

**Evidence ID:** MEM-001  
**File Name:** `jo-2009-12-10.winddramimage`  
**Type:** Windows volatile memory image  
**Primary Purpose:** Recovery of volatile system artifacts

### Planned Analysis Areas

- Operating system identification
- Process enumeration
- Process tree analysis
- Command history
- Console activity
- Network artifacts
- File objects
- Loaded Registry hives
- Suspicious process investigation

### Status

**Integrity Verification:** To be documented in `Hash-Verification.md`  
**Analysis:** To be documented in `06-Memory-Forensics/`

---

# NET-001 — Network Packet Capture

**Evidence ID:** NET-001  
**File Name:** `net-2009-12-10-12:00.pcap.gz`  
**Type:** Packet capture  
**Primary Purpose:** Reconstruction of relevant network communications

### Planned Analysis Areas

- Workstation identification
- HTTP traffic
- HTTP POST requests
- SMTP sessions
- DNS queries
- External communications
- Session timing
- Evidence correlation

### Status

**Integrity Verification:** To be documented in `Hash-Verification.md`  
**Analysis:** To be documented in `07-Network-Forensics/`

---

# EMAIL-001 — Email Evidence

**Evidence ID:** EMAIL-001  
**Expected Artifact:** `jo-email.pst`  
**Type:** Email archive / recovered email artifacts  
**Primary Purpose:** Identification of email-related evidence

### Investigation Areas

- PST recovery
- Email client artifacts
- Recipient artifacts
- Message metadata
- Attachment traces
- Correlation with SMTP sessions

### Important Limitation

The complete email archive must be confirmed through forensic analysis of the workstation evidence.

If the PST cannot be recovered, the investigation records only artifacts directly supported by available evidence.

---

# REG-001 — Windows Registry Evidence

**Evidence ID:** REG-001  
**Source:** Extracted from E01-001  
**Type:** Windows Registry hives  
**Primary Purpose:** Reconstruction of user, device, and application activity

### Target Artifacts

- `NTUSER.DAT`
- `UsrClass.dat`
- `SYSTEM`
- `SOFTWARE`
- Other relevant hives

### Investigation Areas

- USB history
- Mounted devices
- Recent documents
- UserAssist
- Shell activity
- Application execution
- Timeline artifacts

---

# Evidence Relationships

```text
                     ┌───────────────┐
                     │   E01-001     │
                     │ Workstation   │
                     └───────┬───────┘
                             │
             ┌───────────────┼───────────────┐
             ▼               ▼               ▼
        REG-001         EMAIL-001       Disk Artifacts
        Registry          Email          Files/Logs
             │               │               │
             └───────────────┼───────────────┘
                             │
                             ▼
                     Evidence Correlation
                             ▲
             ┌───────────────┼───────────────┐
             │               │               │
             ▼               ▼               ▼
          E01-002          MEM-001         NET-001
            USB             Memory          PCAP
```

---

# Evidence Handling Rule

Original evidence files are not modified during analysis.

The workflow is:

```text
Original Evidence
        ↓
Integrity Verification
        ↓
Documented Hash Values
        ↓
Read-Only Examination / Working Copy
        ↓
Artifact Extraction
        ↓
Analysis Outputs
        ↓
Documented Findings
```

---

## Related Documents

- [`Chain-of-Custody.md`](./Chain-of-Custody.md)
- [`Hash-Verification.md`](./Hash-Verification.md)
- [`Evidence-Handling-Procedure.md`](./Evidence-Handling-Procedure.md)