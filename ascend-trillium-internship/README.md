# Cybersecurity Practical Demonstrations

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python](https://img.shields.io/badge/Python-3.8%2B-blue)](https://www.python.org/)
[![Flask](https://img.shields.io/badge/Flask-2.0%2B-green)](https://flask.palletsprojects.com/)

## 📚 Overview

This repository contains a collection of cybersecurity-related projects completed during my **Ascend Internship at Trillium**. Each task demonstrates a specific security concept, vulnerability, or practical implementation in the cybersecurity domain.

### 🎯 Purpose

- Showcase practical cybersecurity skills  
- Demonstrate understanding of vulnerabilities and their mitigation  
- Provide educational examples for learning and reference  
- Document internship projects professionally  

---

## 🗂️ Projects

### 1. JWT Vulnerability Demonstration  
**Status:** ✅ Complete  

Demonstrates insecure JWT configuration where passwords are exposed in the token payload. Includes both vulnerable and secure implementations.  

**Key Concepts:**  
- JWT structure and components  
- Base64 encoding vs encryption  
- Secure token storage (HTTP‑only cookies)  
- Token expiration and refresh tokens  

📁 [Go to Task 1](./task-01-jwt-vulnerability/)

---

### 2. SMB Server Implementation  
**Status:** ✅ Complete  

Cross‑platform SMB server setup (Windows & Parrot Linux) with a Python script for automated file transfer.  

**Key Concepts:**  
- SMB protocol  
- Cross‑platform file sharing  
- Network file transfer automation  

📁 [Go to Task 2](./task-02-smb-server/)

---

### 3. C# File Downloader  
**Status:** ✅ Complete  

Multi‑language file download system with server‑client architecture (Flask server + Python/C# clients).  

**Key Concepts:**  
- REST API design  
- Multi‑language client implementations  
- Automated batch file retrieval  

📁 [Go to Task 3](./task-03-csharp-file-downloader/)

---

## 🛠️ Technologies Used

- **Languages:** Python, C#, HTML/CSS/JavaScript  
- **Frameworks:** Flask, Bootstrap  
- **Libraries:** PyJWT, pysmb, requests  
- **Tools:** VS Code, SMB, SAMBA  

---

## 🚀 Getting Started

Each project includes detailed setup instructions in its own `README.md`.

### Global Prerequisites

```bash
# Python 3.8+
pip install -r requirements.txt