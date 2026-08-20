
---

## 📁 Task 3 – C# File Downloader

**File path:** `task-03-csharp-file-downloader/README.md`

```markdown
# C# File Downloader

## 📖 Overview

This project implements a client‑server file download system. A Flask server serves files (1.txt to 200.txt) and two clients – a Python script and a C# application – can download files by their ID.

## 🎯 Objectives

1. Create a Flask server to host sample files.  
2. Write a Python script to download files from 1 to 200 (batch).  
3. Write a C# console application to download a single file by ID.  

---

## 🖥️ Server Setup

**Location:** `file_server/`

### `create_sample_files.py`
Generates 200 files (`1.txt` … `200.txt`) inside the `files/` directory.

```bash
python create_sample_files.py