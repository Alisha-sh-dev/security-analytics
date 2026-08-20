# Investigation Scope

## 1. Purpose of Scope

This document defines the boundaries of the M57 Patents Digital Forensics Investigation.

The scope establishes:

- Which evidence sources are examined
- Which activities are investigated
- Which questions the investigation seeks to answer
- Which analysis areas are included
- Which activities are outside the available evidence
- How limitations affect the final assessment

The investigation is limited to the available forensic evidence and artifacts recoverable from those sources.

---

# 2. In-Scope Evidence

## 2.1 Workstation Disk Image

**Evidence:** `jo-2009-12-10.E01`

The workstation image is examined for:

### File System Analysis

- User profile activity
- Documents
- Downloads
- Desktop artifacts
- Temporary files
- Recently accessed files
- Shortcut files
- Deleted files
- File metadata
- MAC timestamps where relevant

### Application Analysis

- Executable artifacts
- Installed or downloaded software
- Encryption-related applications
- Relevant user applications
- Potentially suspicious executables

### Email Artifact Analysis

- Email client artifacts
- PST availability
- Email-related files
- Recipient artifacts
- Attachment-related traces

### Registry Extraction

Relevant Registry hives are extracted for further analysis.

---

## 2.2 USB Disk Image

**Evidence:** `jo-work-usb-2009-12-11.E01`

The USB image is examined for:

- File and folder inventory
- Patent-related artifacts
- Document metadata
- File timestamps
- Deleted artifacts
- Recoverable files
- Evidence of data staging

USB findings are compared against workstation and Registry evidence.

---

## 2.3 Windows Registry

Registry artifacts obtained from the workstation image are examined for:

- USB device history
- Mounted devices
- Recently accessed documents
- User activity
- Application execution
- Shell artifacts
- UserAssist records
- ShellBag artifacts where available
- Other artifacts relevant to the case timeline

Target hives may include:

```text
NTUSER.DAT
UsrClass.dat
SYSTEM
SOFTWARE
SAM
SECURITY
```

The exact artifacts analyzed depend on successful recovery and relevance to the investigation.

---

## 2.4 Memory Image

**Evidence:** `jo-2009-12-10.winddramimage`

Memory analysis includes:

- Operating system identification
- Process enumeration
- Process tree analysis
- Suspicious process investigation
- Command-line history
- Console history
- Network connections where recoverable
- File object analysis
- Loaded DLLs where relevant
- Registry hive identification

Potentially significant processes are documented together with supporting artifacts rather than being classified as malicious solely because they are unusual.

---

## 2.5 Network Capture

**Evidence:** `net-2009-12-10-12:00.pcap.gz`

The network investigation includes:

### HTTP

- HTTP requests
- HTTP POST activity
- External destinations
- Request timing
- Request paths
- Available data characteristics

### SMTP

- SMTP sessions
- Mail server communication
- Session timing
- Data transfer characteristics
- Encryption or TLS indicators where observable

### DNS

- Queries associated with relevant activity
- External domains
- Timing correlation

### Other Traffic

Traffic outside standard protocols is examined where it is relevant to the investigation.

---

## 2.6 Email Evidence

The investigation includes examination of:

- `jo-email.pst`, if successfully recovered
- Email-related artifacts
- Recipient information
- Message metadata
- Attachment traces
- Correlation with SMTP activity

A missing PST is treated as a limitation.

No message content is assumed without a recoverable supporting artifact.

---

# 3. In-Scope Investigation Questions

The investigation assesses the following areas.

## User Attribution

Determine what user and workstation artifacts are associated with relevant activity.

## Sensitive Data Identification

Identify patent-related and potentially confidential files or artifacts relevant to the case.

## File Activity

Determine whether relevant files were:

- Created
- Accessed
- Modified
- Downloaded
- Deleted
- Copied
- Staged

## USB Activity

Determine:

- Whether USB devices were connected
- Which removable devices can be identified
- When relevant connections occurred
- Whether file-system evidence supports file transfer

## Process and Memory Activity

Determine:

- Which processes were active
- Whether suspicious or unknown executables were present
- Whether command-line activity was recoverable
- Whether encryption-related applications were active
- Whether artifacts correlate with other evidence sources

## Network Activity

Determine:

- Which outbound communications occurred
- Which protocols were involved
- Which destinations were contacted
- Whether traffic characteristics correlate with relevant file activity

## Email Activity

Determine:

- Whether email artifacts are recoverable
- Whether external recipient information is available
- Whether SMTP activity correlates with other evidence

## Timeline Reconstruction

Construct a timeline of relevant activity by correlating:

```text
Disk
  +
USB
  +
Registry
  +
Memory
  +
Network
  +
Email
  =
Master Investigation Timeline
```

---

# 4. Evidence Correlation Scope

No individual evidence source is treated as the complete record of the incident.

The project specifically correlates:

| Evidence Source | Correlation Purpose |
|---|---|
| Disk + Registry | File activity and user/device activity |
| Disk + USB | Relevant files and removable-media activity |
| Disk + Memory | Files, applications, and process activity |
| Memory + Network | Processes and network communications |
| Network + Email | SMTP activity and email artifacts |
| All Sources | Timeline reconstruction and final assessment |

Where two or more independent sources support the same event, the finding may be classified as corroborated.

---

# 5. Out-of-Scope Activities

The following are outside the scope unless directly represented by the provided evidence:

- Live system examination
- Examination of external email servers
- Direct examination of external HTTP servers
- Third-party account acquisition
- Cloud account investigation
- Social media account analysis
- Additional personal devices
- Physical interviews
- Human witness statements
- Recovery of data from systems not provided as evidence

The project therefore does not claim to prove facts requiring evidence that is outside the available dataset.

---

# 6. Investigation Limitations

The investigation may be affected by the following limitations:

## Missing or Unrecoverable Artifacts

Some expected artifacts may not be recoverable from the evidence.

For example, the complete email archive may be unavailable.

---

## Deleted Data

A deleted artifact may:

- Be fully recoverable
- Be partially recoverable
- Exist only as metadata
- Be overwritten and unrecoverable

Therefore, the absence of a recovered file does not automatically prove that it never existed.

---

## Encrypted Traffic

Encrypted sessions may provide evidence of:

- Communication timing
- Source and destination
- Protocol or session characteristics
- Data volume

However, encrypted content may not be available for direct inspection.

---

## Timestamp Differences

Different evidence sources may record time differently.

Possible issues include:

- UTC versus local time
- Time-zone differences
- File-system timestamp semantics
- Acquisition time versus event time
- Clock inconsistencies

All timeline events must therefore be normalized before final correlation.

---

# 7. Scope Control

Any finding included in the final investigation must identify:

1. **Evidence Source**
2. **Artifact or Data**
3. **Tool or Method**
4. **Observed Finding**
5. **Timestamp, if applicable**
6. **Forensic Significance**
7. **Confidence Level**
8. **Limitations**

This ensures that the investigation remains traceable and reproducible.

---

# 8. Scope Statement

> The M57 Patents Digital Forensics Investigation examines the available workstation, USB, memory, network, Registry, and email-related evidence to identify and correlate activity relevant to suspected intellectual-property data leakage. Conclusions are limited to what can be supported by documented forensic artifacts and cross-source evidence correlation.

---

## Related Sections

- [`Case-Background.md`](./Case-Background.md)
- [`Objectives.md`](./Objectives.md)
- [`../02-Evidence-Management/`](../02-Evidence-Management/)