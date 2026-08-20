# Linux Lab – File System and Process Management

## 📖 Overview
This project demonstrates practical skills in Linux system administration, focusing on **process management**, **file system operations**, **file encryption/decryption**, and **mass storage management**. All tasks were performed in a virtualized environment (VMware/VirtualBox) using a Linux distribution.

---

## 🔑 Key Areas Covered

### 1. Process Management
- **Foreground vs Background Processes:** Running applications with `&`, using `ps`, `jobs`, and `kill`.  
- **Process Monitoring:** Commands like `ps aux`, `top`, `uptime`, and `pstree`.  
- **Signals:** Using `CTRL+C` to terminate foreground processes.  
- **Interpretation:** Detailed breakdown of process fields (PID, USER, CPU%, MEM%, STAT, COMMAND).  

### 2. File System & File Management
- **Directory Operations:** `mkdir`, `cd`, `ls`, `pwd`.  
- **File Operations:** `touch`, `cp`, `vim` editing.  
- **Permissions:** Viewing with `ls -l`, changing with `chmod`, numeric notation (644, 755, etc.).  
- **Encryption/Decryption:** Using OpenSSL AES-256-CBC to secure files (`project.enc`).  

### 3. Mass Storage Management
- **Disk Usage:** `df -h` for filesystem statistics.  
- **Block Devices:** `lsblk` to list disks and partitions.  
- **Partitioning:** `fdisk` and `parted` to create partitions.  
- **Filesystem Creation:** `mkfs -t ext4 /dev/sdb1`.  
- **Verification:** `parted -l` to confirm filesystem type and partition table.  

---

## 📊 Sample Highlights

### Process Example (PID 1 – systemd)
| Field   | Value   | Explanation                          |
|---------|---------|--------------------------------------|
| USER    | root    | Owned by superuser                   |
| PID     | 1       | First process started                |
| STAT    | Ss      | Sleeping, session leader             |
| COMMAND | /sbin/init | System initialization process     |

### File Permissions
- **Project File:** `-rw-r--r--` → Numeric: **644**  
- **Lectures Directory:** `drwxr-xr-x` → Numeric: **755**  

### Storage Example
- **Disk /dev/sda:** 32 GB, 2 partitions  
- **Disk /dev/sdb:** 5 GB, new ext4 partition created (`/dev/sdb1`)  

---

## 🧠 Learning Outcomes
- Mastered Linux **process commands** (`ps`, `top`, `jobs`, `kill`).  
- Practiced **file system navigation and permissions**.  
- Implemented **file encryption/decryption** with OpenSSL.  
- Configured **disk partitions and filesystems** for storage management.  

---

## 🛠️ Technologies Used
- Linux VM (VMware/VirtualBox)  
- Bash Shell  
- OpenSSL (AES-256-CBC)  
- fdisk, parted, mkfs  

---

## 👨‍💻 Author
**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)
[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.22005797-0B1F3A.svg)](https://doi.org/10.5281/zenodo.22006734)

---

## 📜 License
Educational use only. Free to adapt for learning Linux administration concepts.

---
*This project demonstrates expertise in cybersecurity risk assessment, incident response, and security program development.*
