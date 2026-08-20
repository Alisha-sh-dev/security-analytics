# Investigation Objectives

## Primary Objective

Conduct a structured multi-source forensic investigation to identify, preserve, examine, correlate, and assess digital evidence relevant to suspected intellectual-property data leakage associated with Jo's workstation.

---

# Objective 1 — Preserve Evidence Integrity

Ensure that original evidence is handled in a forensic manner.

### Activities

- Maintain original evidence separately from working copies
- Use read-only access where appropriate
- Document evidence identifiers
- Record evidence handling activity
- Calculate cryptographic hashes
- Verify evidence integrity before analysis

### Success Criteria

Evidence integrity can be demonstrated through documented handling and repeatable verification.

---

# Objective 2 — Establish an Evidence Inventory

Create a complete inventory of the available evidence.

The inventory must document:

- Evidence ID
- Evidence name
- Evidence type
- Source
- Acquisition or collection information where available
- File size
- Hash values
- Analysis status
- Notes and limitations

### Evidence Categories

```text
WORKSTATION IMAGE
        │
        ├── File System
        ├── Registry
        ├── Email Artifacts
        └── User Activity
               
USB IMAGE
        │
        ├── Files
        ├── Directories
        └── Removable Media Artifacts

MEMORY IMAGE
        │
        ├── Processes
        ├── Commands
        ├── Files
        └── Network Artifacts

NETWORK CAPTURE
        │
        ├── HTTP
        ├── SMTP
        ├── DNS
        └── External Communications
```

---

# Objective 3 — Identify Relevant File-System Artifacts

Examine the workstation image for evidence relating to:

- Patent-related information
- Documents
- Downloads
- Temporary files
- Recent file activity
- Shortcut artifacts
- Deleted files
- Potentially relevant executables
- Encryption-related software

Each artifact is assessed according to its direct forensic significance.

---

# Objective 4 — Investigate Removable-Media Activity

Determine:

- Which USB devices were associated with the workstation
- When relevant USB connections occurred
- What files and directories exist in the USB image
- Whether artifacts support potential data staging or transfer

A USB connection alone is not considered proof of confidential file exfiltration.

---

# Objective 5 — Examine Windows Registry Artifacts

Analyze Registry evidence to identify:

- User activity
- Recently accessed documents
- Application execution
- USB history
- Mounted devices
- Shell activity
- Other relevant artifacts

Registry findings are correlated with file-system and USB evidence.

---

# Objective 6 — Perform Memory Forensic Analysis

Analyze the Windows memory image to identify:

- Operating system information
- Active processes
- Parent-child process relationships
- Unknown or suspicious executables
- Command-line activity
- Console history
- Network artifacts
- File objects
- Loaded Registry hives

Potentially suspicious artifacts are documented with supporting evidence and confidence assessments.

---

# Objective 7 — Investigate Network Communications

Analyze the PCAP to identify activity associated with the relevant workstation.

Primary areas include:

```text
HTTP Requests
      ↓
HTTP POST Activity
      ↓
SMTP Sessions
      ↓
DNS Queries
      ↓
Other Outbound Communications
```

The objective is to determine whether network activity can be technically correlated with relevant events identified through disk, USB, Registry, or memory analysis.

---

# Objective 8 — Examine Email Evidence

Determine whether available evidence supports findings relating to:

- Email client activity
- External recipients
- Email metadata
- Attachments
- Relevant timestamps
- SMTP communications

Where complete email content is unavailable, conclusions are restricted to the artifacts that can actually be recovered.

---

# Objective 9 — Reconstruct the Master Timeline

Create a unified timeline from all available evidence sources.

The timeline will include, where recoverable:

- File creation
- File modification
- File access
- Downloads
- USB connections
- Application execution
- Command execution
- Process creation
- Memory acquisition activity
- Network sessions
- SMTP activity
- Email-related events

Each timeline entry should identify its source and supporting artifact.

---

# Objective 10 — Correlate Independent Evidence Sources

Evaluate whether individual findings are supported by other evidence.

Example:

```text
File Access
    │
    ▼
Relevant Timestamp
    │
    ├──────────► USB Activity
    │
    ├──────────► Process Activity
    │
    ├──────────► Command Execution
    │
    └──────────► Network Communication
                    │
                    ▼
             Evidence Correlation
```

The objective is to distinguish coincidence from meaningful forensic correlation.

---

# Objective 11 — Assess Possible Data Transfer Mechanisms

The investigation examines potential mechanisms including:

- USB/removable media
- HTTP
- SMTP/email
- Other network communications

Each mechanism is assessed independently.

The final assessment distinguishes between:

| Assessment | Definition |
|---|---|
| Verified | Direct forensic evidence supports the activity |
| Corroborated | Multiple independent sources support the activity |
| Indicated | Evidence suggests activity but does not conclusively prove it |
| Hypothesis | Possible explanation requiring additional evidence |
| Not Established | Insufficient evidence for a conclusion |

---

# Objective 12 — Produce Reproducible Findings

Every significant finding should be documented using:

```text
Evidence Source
      ↓
Tool / Method
      ↓
Command or Procedure
      ↓
Artifact Identified
      ↓
Observed Result
      ↓
Forensic Significance
      ↓
Confidence Assessment
```

This enables another examiner to understand and reproduce the investigative process.

---

# Objective 13 — Document Investigation Limitations

The investigation must clearly document:

- Missing evidence
- Unrecoverable artifacts
- Deleted or overwritten data
- Encrypted traffic
- Timestamp uncertainty
- Evidence-source limitations
- Alternative explanations

Limitations are treated as part of the forensic assessment rather than omitted.

---

# Final Investigation Objective

> Produce a professional, evidence-based forensic investigation that demonstrates practical skills in digital evidence handling, disk forensics, USB analysis, Windows Registry forensics, memory forensics, network analysis, timeline reconstruction, and cross-source evidence correlation.

The final project should allow a reviewer, recruiter, cybersecurity professional, or forensic examiner to understand:

- What evidence was available
- How the evidence was handled
- Which tools were used
- How artifacts were identified
- How findings were correlated
- Which conclusions are directly supported
- Which conclusions remain uncertain
- How the investigation could be reproduced