# Case Background

## M57 Patents – Suspected Intellectual Property Data Leakage

### Case Overview

This investigation examines a suspected data leakage incident involving **M57 Patents**, an organization associated with proprietary patent-related and technical information.

The investigation focuses on digital activity associated with the workstation assigned to **Jo Smith**. Concerns regarding potential unauthorized disclosure of confidential information resulted in the collection and examination of multiple digital evidence sources.

The available evidence includes:

- A forensic image of Jo's workstation
- A forensic image of a USB storage device
- A Windows memory image
- A network packet capture
- Email artifacts recoverable from the workstation
- Windows Registry artifacts recoverable from the workstation

The purpose of the investigation is to determine whether the available evidence supports findings relating to the access, preparation, transfer, or possible exfiltration of confidential patent-related information.

---

## Investigation Context

The case involves suspected exposure of proprietary information associated with M57 Patents. The forensic examination therefore focuses on reconstructing relevant user and system activity during the investigation period.

Particular attention is given to the relationship between:

- Patent-related files and documents
- User activity on Jo's workstation
- Downloaded and temporary files
- Removable-media activity
- Windows Registry artifacts
- Running processes and command-line activity
- Memory-resident artifacts
- Outbound network communications
- SMTP and HTTP activity
- Available email artifacts

Rather than relying on a single source of evidence, findings are assessed through **cross-source forensic correlation** wherever possible.

---

## Primary Investigation Period

The principal period of interest is:

> **December 2009, with particular focus on activity occurring on and around 10 December 2009.**

Artifacts outside this period may also be examined where they provide context for relevant activity, including:

- Earlier installation or download of software
- Prior access to patent-related material
- Previous USB device connections
- Historical user activity
- File creation and modification activity

---

## Evidence Sources

### Workstation Disk Image

**Evidence File:** `jo-2009-12-10.E01`

The workstation image is the primary source for examining:

- File system artifacts
- User directories
- Documents
- Downloads
- Temporary files
- Deleted artifacts
- Shortcut files
- Executable files
- Email-related artifacts
- Windows Registry hives
- USB connection records

---

### USB Disk Image

**Evidence File:** `jo-work-usb-2009-12-11.E01`

The USB evidence is examined to identify:

- Files and directories present on the device
- Relevant document artifacts
- Modification timestamps
- Potential data staging
- Deleted or recoverable artifacts
- Relationships between removable-media activity and workstation artifacts

---

### Memory Image

**Evidence File:** `jo-2009-12-10.winddramimage`

The memory image is examined for volatile evidence, including:

- Operating system information
- Running processes
- Parent-child process relationships
- Command history
- Console activity
- Network artifacts
- Open or scanned file objects
- Loaded Registry hives
- Application and executable artifacts

---

### Network Capture

**Evidence File:** `net-2009-12-10-12:00.pcap.gz`

The packet capture is examined to identify and assess:

- Traffic associated with the workstation
- HTTP activity
- HTTP POST requests
- SMTP communications
- DNS activity
- External destinations
- Session timing
- Data transfer characteristics

Network events are correlated with other evidence before conclusions regarding data transfer are made.

---

### Email Evidence

Email evidence is obtained through examination of the workstation image and related artifacts.

The investigation assesses:

- Availability or recovery of `jo-email.pst`
- Email client artifacts
- External recipients
- Relevant timestamps
- Potential attachment artifacts
- Correlation with network SMTP activity

If a complete email archive cannot be recovered, this limitation is documented and no email content is assumed.

---

### Windows Registry Evidence

Registry artifacts are obtained from the workstation image and examined for evidence relating to:

- User activity
- Recently accessed documents
- Application execution
- USB devices
- Mounted devices
- Shell activity
- User-specific artifacts

---

## Core Investigative Questions

The investigation seeks to answer the following questions.

### Who?

Who was associated with the workstation and relevant user activity?

### What?

What patent-related, confidential, or potentially sensitive information was accessed or handled?

### When?

When did significant file, USB, process, command, email, and network events occur?

### How?

What mechanisms, if any, were available or evidenced for the transfer of information?

Potential channels examined include:

- USB/removable media
- HTTP
- SMTP/email
- Other outbound network communications

### To What Extent?

What conclusions can be supported by direct evidence, corroborated evidence, or only inference?

---

## Investigation Principle

A central principle of this project is:

> **Suspicious activity is not automatically treated as confirmed data exfiltration.**

For example:

- USB connection evidence does not independently prove confidential files were copied.
- HTTP POST activity does not independently prove the content was confidential.
- SMTP traffic does not independently prove which document was transmitted.
- The presence of encryption software does not independently establish that encryption was used for exfiltration.

Forensic conclusions are therefore based on the strongest available combination of:

1. Direct artifacts
2. Independent corroboration
3. Temporal correlation
4. Technical context
5. Documented limitations

---

## Investigation Approach

The case follows a multi-stage forensic approach:

```text
Evidence Identification
        ↓
Evidence Preservation
        ↓
Integrity Verification
        ↓
Individual Source Examination
        ↓
Artifact Extraction
        ↓
Cross-Source Correlation
        ↓
Timeline Reconstruction
        ↓
Evidence Assessment
        ↓
Final Findings
```

The purpose of this approach is to produce findings that are reproducible, clearly documented, and proportionate to the available evidence.

---

## Scope Boundary

This repository documents analysis of the available public training evidence only.

The investigation does not claim access to:

- Systems outside the provided evidence
- Live email servers
- External web servers
- Third-party cloud accounts
- Additional devices not represented in the evidence
- Information not recoverable from the available forensic sources

Where evidence is unavailable, incomplete, encrypted, deleted beyond recovery, or otherwise inconclusive, this is recorded as an investigation limitation.

---

## Case Status

**Investigation Type:** Digital Forensic Investigation  
**Primary Concern:** Suspected Intellectual Property / Data Leakage  
**Primary Subject:** Activity associated with Jo's workstation  
**Evidence Types:** Disk, USB, Memory, Network, Email Artifacts, Registry  
**Analysis Approach:** Multi-source evidence correlation  
**Case Period:** December 2009  
**Primary Focus Date:** 10 December 2009

---

## Related Sections

- [`Investigation-Scope.md`](./Investigation-Scope.md)
- [`Objectives.md`](./Objectives.md)
- [`../02-Evidence-Management/`](../02-Evidence-Management/)