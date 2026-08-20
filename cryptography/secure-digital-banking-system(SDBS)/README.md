# 🔐 Secure Digital Banking System (SDBS)
### Cryptographic Implementation for Financial Data Protection

[![Repository Size](https://img.shields.io/github/repo-size/Alisha-sh-dev/security-analytics?style=flat-square)](https://github.com/Alisha-sh-dev/security-analytics)
[![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=flat-square&logo=python)](https://www.python.org/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)
[![AES-256](https://img.shields.io/badge/AES-256-2E7D32?style=flat-square)](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard)
[![RSA-2048](https://img.shields.io/badge/RSA-2048-1565C0?style=flat-square)](https://en.wikipedia.org/wiki/RSA_(cryptosystem))
[![PGP Encryption](https://img.shields.io/badge/PGP-Encryption-0B3D91?style=flat-square)](https://en.wikipedia.org/wiki/Pretty_Good_Privacy)
[![Open Source](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/Alisha-sh-dev/security-analytics/pulls)
[![Maintained](https://img.shields.io/badge/Maintained-yes-green.svg?style=flat-square)](https://github.com/Alisha-sh-dev/security-analytics)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22005797.svg)](https://doi.org/10.5281/zenodo.22005797)

---

## 📋 Table of Contents
- [📖 Project Overview](#-project-overview)
- [🎯 Security Objectives](#-security-objectives)
- [✨ Key Features](#-key-features)
- [🛠️ Technology Stack](#️-technology-stack)
- [🔧 Implementation Tasks](#-implementation-tasks)
- [💻 Installation Guide](#-installation-guide)
- [📊 Compliance Framework](#-compliance-framework)
- [📂 Project Structure](#-project-structure)
- [📸 Outputs & Screenshots](#-outputs--screenshots)
- [🚀 Future Enhancements](#-future-enhancements)
- [📚 Skills Demonstrated](#-skills-demonstrated)
- [📜 License](#-license)
- [📬 Connect with Me](#-connect-with-me)
- [🙏 Acknowledgments](#-acknowledgments)

---

## 📖 Project Overview

The **Secure Digital Banking System (SDBS)** is a comprehensive cryptographic implementation designed to protect sensitive financial data at rest, in transit, and during processing. This project demonstrates the practical application of modern cryptographic techniques to address real-world banking security challenges including data breaches, transaction tampering, unauthorized access, and regulatory compliance.

Built with Python and industry-standard cryptographic libraries, this system provides a complete security framework for banking institutions handling sensitive customer financial data.

---

## 🎯 Security Objectives

| Security Principle | Implementation | Status |
| :--- | :--- | :--- |
| **Confidentiality** | AES-256-CBC encryption of all sensitive data | ✅ Implemented |
| **Integrity** | SHA-256 hashing with tamper detection | ✅ Implemented |
| **Authentication** | RSA digital signatures with X.509 certificates | ✅ Implemented |
| **Non-Repudiation** | PKI-based identity binding | ✅ Implemented |
| **Compliance** | GDPR & UAE PDPL alignment | ✅ Implemented |

---

## ✨ Key Features

### 🔒 Data Encryption (Task 1)
- **AES-256-CBC** encryption for all banking data.
- **PKCS#7 padding** for block alignment.
- **Base64 encoding** for safe CSV/text storage.
- **Random IV generation** per encryption block (prevents pattern leakage).

### 🖊️ Hashing & Digital Signatures (Task 2)
- **SHA-256** cryptographic hashing of all transactions.
- **RSA-2048** digital signatures for identity authentication.
- **Tamper Detection**: Any data modification causes a hash mismatch, failing signature validation.

### 🛡️ Access Control & PKI (Task 3)
- **Role-Based Access Control (RBAC)**:
  - *Customer*: View own account, transfer money.
  - *Bank Employee*: View customer accounts, process loans.
  - *Auditor*: View all transactions, generate audit logs (read-only).
- **X.509 Digital Certificates**: Self-signed certificates with RSA-2048 key pairs for identity binding.

### ☁️ Cloud & Email Protection (Task 4)
- **Cloud Encryption**: Cryptomator client-side encryption (**AES-256-GCM + scrypt**).
- **Zero-Knowledge Architecture**: Cloud providers never see decryption keys.
- **Email Encryption**: PGP encryption via Mailvelope (**RSA-2048**).
- **Hybrid Encryption**: AES session key paired with RSA public key encryption.

### 🕵️ Privacy-Enhancing Techniques (Task 5)
- **Anonymization**: Replaces PII with `"REDACTED"` to remove direct identifiers.
- **Pseudonymization**: Maps actual customer names to pseudonyms (`User_1`, `User_2`) to preserve referential integrity.
- **Differential Privacy**: Adds Laplace noise ($\epsilon = 0.5$) to prevent individual identification while maintaining statistical utility.
- **Data Masking**: Redacts sensitive text (e.g., Email: `jo***@kag.com`).
- **Homomorphic Encryption**: Conceptual framework for computing directly on encrypted data.

---

## 🛠️ Technology Stack

### Languages & Libraries
| Technology | Purpose |
| :--- | :--- |
| **Python 3.x** | Core language implementation |
| **`cryptography`** | AES-256 encryption & X.509 certificates |
| **`pycryptodome`** | RSA key handling & SHA-256 hashing |
| **`pandas`** | Data manipulation and CSV processing |
| **`numpy`** | Differential privacy (Laplace noise generation) |
| **`openpyxl`** | Excel database processing |

### Security Tools
| Tool | Purpose |
| :--- | :--- |
| **Cryptomator** | Client-side zero-knowledge cloud encryption |
| **Mailvelope** | PGP email encryption extension |
| **OpenSSL** | Certificate generation and key management |

---

## 🔧 Implementation Tasks

### Task 1: AES-256-CBC Symmetric Encryption
```python
import os
import base64

# Key generation
key = os.urandom(32)  # 256-bit key
iv = os.urandom(16)   # 16-byte initialization vector

# Encryption process
def encrypt_value(value):
    # Applies PKCS#7 padding
    # Encrypts with AES-256-CBC
    # Encodes output to Base64
    return base64_encoded_ciphertext
```

### Task 2: SHA-256 Hashing + RSA Digital Signatures
```python
import hashlib
from Crypto.Signature import pkcs1_15

# SHA-256 hash generation
hash_obj = hashlib.sha256(transaction_data.encode())
hash_hex = hash_obj.hexdigest()

# RSA digital signature generation
signature = pkcs1_15.new(private_key).sign(hash_for_signing)
```

### Task 3: RBAC with PKI Certificates
```python
from cryptography.x509 import CertificateBuilder

# Role definitions
roles = {
    'Customer': ['view_own_account', 'transfer_money'],
    'BankEmployee': ['view_customer_accounts', 'process_loans'],
    'Auditor': ['view_all_transactions', 'view_audit_logs']
}

# Self-signed X.509 certificate generation
cert = CertificateBuilder().subject_name(subject).public_key(public_key).sign(private_key)
```

### Task 4: Cloud & Email Protection
```bash
# Cryptomator - Client-side encryption
# Files encrypted locally before cloud upload
# Zero-knowledge architecture

# Mailvelope PGP encryption
# RSA-2048 key pair generation
# Hybrid encryption: AES session key + RSA
```

### Task 5: Privacy-Enhancing Techniques (PETs)
```python
import numpy as np

# Differential Privacy - Laplace noise implementation
noise = np.random.laplace(0, sensitivity / epsilon)
dp_value = original_value + noise

# Data masking
masked_email = email[:2] + '***@' + domain
```

---

## 💻 Installation Guide

### Prerequisites
- **Python 3.x**
- **pip** package manager
- **Cryptomator** (for cloud encryption tasks)
- **Mailvelope** browser extension (for email PGP tasks)

### Step 1: Install Python Libraries
```bash
pip install pandas cryptography pycryptodome openpyxl numpy
```

### Step 2: Clone Repository
```bash
git clone https://github.com/Alisha-sh-dev/security-analytics.git
cd security-analytics/projects/banking-security
```

### Step 3: Prepare Your Data
Place your banking database file as `Comprehensive Banking Database.xlsx` in the root of the project folder.

### Step 4: Run the Implementation
```bash
# Run via Jupyter Notebook
jupyter notebook code.ipynb

# Or execute individual modules
python task1_encryption.py
python task2_hashing_signatures.py
python task3_rbac_pki.py
python task5_privacy_pets.py
```

### Step 5: Cloud Encryption Setup (Cryptomator)
1. Download Cryptomator from [cryptomator.org](https://cryptomator.org/).
2. Create a new vault (e.g., `"BankingData"`).
3. Set a strong vault password.
4. Move your banking files into the vault directory; files are encrypted locally prior to cloud sync.

### Step 6: Email Encryption Setup (Mailvelope)
1. Install the Mailvelope browser extension.
2. Generate an **RSA-2048** key pair.
3. Export and share your public key.
4. Compose PGP-encrypted emails using the recipient's public key.

---

## 📊 Compliance Framework

### GDPR Compliance
| Article | Requirement | Implementation |
| :--- | :--- | :--- |
| **Art. 32** | Security of Processing | AES-256 encryption for stored data at rest |
| **Art. 25** | Data Protection by Design | Privacy-Enhancing Techniques (PETs) applied before storage |
| **Art. 33** | Notification of Data Breach | Audit logging and digital signature verification system |

### UAE PDPL Compliance
| Article | Requirement | Implementation |
| :--- | :--- | :--- |
| **Art. 12** | Data Subject Rights | Access control list enforcement and audit logs |
| **Art. 15** | Data Minimization | Selective column encryption and PII masking |
| **Art. 21** | Security Measures | Multi-layered encryption (AES-256, RSA-2048, PGP) |

### Privacy Risk Assessment Matrix
| Sensitivity Level | Target Columns | Risk Score | Protection Applied |
| :--- | :--- | :--- | :--- |
| **High** | Customer ID, Name, Contact, Email, Account Balance | `4-5` | AES-256, SHA-256 Hashing, Data Masking |
| **Medium** | Address, City, Account Type | `2-3` | Pseudonymization |
| **Low** | Age, Gender | `1` | Minimal handling required |

---

## 📸 Outputs & Screenshots

### Task 1: AES-256 Encryption Output
```text
Database encrypted and saved to 'Encrypted_Banking_Database.csv'

--- Demo ---
Original:  1313.38
Encrypted: Nfl51+7ocSSX6DLE9AIAQw==
Decrypted: 1313.38
```

### Task 2: SHA-256 Hash Output (First 10 Records)
```text
TxID 1:  Data: 1|1457.61|Withdrawal|2770.99
  SHA-256 Hash:  04ca5ebc3d6339a5d7547ed35a641df1...
  RSA Signature: 3c5e53fefd5d1849050692b75c7a7e5013dc6b5f...

=== Tamper Detection Demo ===
Original hash: 04ca5ebc3d6339a5...
Tampered hash: b87316bbe1b568ba...
Hashes match? No - Tampering detected!
Original signature: VALID
Tampered signature would be INVALID (as expected)
```

### Task 3: RBAC + PKI Output
```text
Certificate generated for: Alice Customer (Role: Customer)
Certificate generated for: Bob Employee (Role: BankEmployee)
Certificate generated for: Carol Auditor (Role: Auditor)

✅ ACCESS GRANTED: Alice Customer can view_own_account
❌ ACCESS DENIED: Alice Customer cannot view_all_transactions
✅ ACCESS GRANTED: Bob Employee can view_customer_accounts
✅ ACCESS GRANTED: Carol Auditor can view_audit_logs
❌ ACCESS DENIED: Carol Auditor cannot transfer_money
```

### Task 5: Privacy-Enhancing Techniques Output
```text
=== AFTER ANONYMIZATION ===
Customer ID  First Name  Last Name  Age  Account Balance
ID_1         REDACTED    REDACTED   45   1313.38

=== AFTER PSEUDONYMIZATION ===
Customer ID  First Name  Account Balance
1            User_1      1313.38

=== DIFFERENTIAL PRIVACY (ε=0.5) ===
Account Balance  Account Balance (DP)
1313.38          1314.281889

=== DATA MASKING (Email) ===
Email                       Email (Masked)
joshua.hall@kag.com         jo***@kag.com
```

---

## 🚀 Future Enhancements

- [ ] **Real Certificate Authority (CA) Integration**: Connect with automated CAs (e.g., Let's Encrypt / ACME).
- [ ] **Hardware Security Module (HSM)**: Integrate with HSMs for key storage and cryptographic operations.
- [ ] **Post-Quantum Cryptography**: Introduce lattice-based algorithms (Kyber, Dilithium).
- [ ] **Fully Homomorphic Encryption (FHE)**: Enable computations over encrypted analytics datasets.
- [ ] **SIEM Integration**: Export real-time security events to Splunk or ELK stack.
- [ ] **Multi-Factor Authentication (MFA)**: Integrate TOTP / WebAuthn standard mechanisms.
- [ ] **API Security**: Implement OAuth2 + JWT access controls.
- [ ] **Blockchain Audit Logs**: Utilize immutable ledgers for audit trails.

---

## 📚 Skills Demonstrated

- **Symmetric & Asymmetric Cryptography** (AES-256, RSA-2048, SHA-256)
- **Public Key Infrastructure (PKI)** & Digital Certificates (X.509)
- **Access Control Architecture** (Role-Based Access Control - RBAC)
- **Privacy-Enhancing Technologies (PETs)** (Differential Privacy, Anonymization, Pseudonymization)
- **Regulatory Compliance Frameworks** (GDPR, UAE PDPL)
- **Secure System Architecture Design**
- **Python Security Development**

---

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

```text
MIT License

Copyright (c) 2026 Alisha Shoukat

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## 📬 Connect with Me

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Alisha%20Shoukat-0A66C2?style=flat-square&logo=linkedin)](https://linkedin.com)
[![GitHub](https://img.shields.io/badge/GitHub-Alisha--sh--dev-181717?style=flat-square&logo=github)](https://github.com/Alisha-sh-dev)

---

## 🙏 Acknowledgments

- **`cryptography` library**: For robust AES and X.509 implementations.
- **`pycryptodome` library**: For RSA signatures and cryptographic hash primitives.
- **Cryptomator**: For zero-knowledge client-side cloud encryption utilities.
- **Mailvelope**: For open-source PGP email encryption.
- **OpenSSL Project**: For industry-standard PKI tools.

---

*Built with 🔐 by Alisha Shoukat.*
