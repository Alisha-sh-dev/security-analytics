# Ext4 File System Analysis

## 📖 Overview

This report provides a comprehensive forensic analysis of the **Ext4 File System**, examining its core data structures (superblock, inode table, data blocks, extents) and tracing the complete lifecycle of a file from creation through deletion.

The study demonstrates practical forensic investigation techniques, including:

- Partition creation and formatting using `mkfs.ext4`
- File system metadata extraction with `dumpe2fs`
- File location tracing from GPT → Superblock → Root Folder → Inode → Data Blocks
- File deletion mechanics and recovery attempts using `extundelete`
- Hex-level analysis with HxD

---

## 🎯 Key Topics Covered

### 1. Ext4 Fundamental Structures
- **Superblock:** Primary and backup locations, block size (4KB), total blocks (47,104)
- **Inode Table:** 47,104 inodes, 256 bytes each
- **Block Bitmap & Inode Bitmap:** Allocation tracking
- **Data Blocks:** Extent-based storage for large files

### 2. File Location Tracing
Practical demonstration tracing a file (`ArshadAshraf.txt`) through the file system:

| Layer | Command/Method |
|-------|----------------|
| GPT → Superblock | `lsblk`, `sudo mkfs.ext4 -b 4096 -L ArshadAshraf /dev/sdc1` |
| Superblock → Root Folder | `sudo dumpe2fs /dev/sdc1 \| grep "superblock"` |
| Root Folder → Inode | `sudo ls -i` (Inode number 12) |
| Inode → Data Blocks | `sudo debugfs -R "stat /ArshadAshraf.txt" /dev/sdc1` |
| Data Blocks → Contents | `sudo debugfs -R "blocks /ArshadAshraf.txt" /dev/sdc1` (Block 7074) |

### 3. File Deletion Analysis
- **Mechanics:** Inode marked as free, blocks deallocated
- **Impact:** Superblock, inode table, and block bitmap updated
- **Recovery Attempt:** `extundelete` used to restore deleted files
- **Privacy Implications:** Data remains recoverable until overwritten

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| `lsblk` | List disk partitions |
| `mkfs.ext4` | Create Ext4 file system |
| `dumpe2fs` | Extract superblock and inode metadata |
| `debugfs` | Examine file system internals (inodes, blocks) |
| `extundelete` | Attempt recovery of deleted files |
| `HxD` | Hex analysis of disk structures |

---

## 📊 Key Calculations

| Metric | Value |
|--------|-------|
| **Total Disk Space** | 4096 bytes/block × 47,104 blocks ≈ 184 MB |
| **Free Space** | 40006 free blocks × 4096 bytes ≈ 156 MB |
| **File Size** | 7 bytes (`ArshadAshraf.txt`) |
| **File Block** | 7074 (hex: `0x1BA2`) |

---

## 🔒 Security & Forensics Relevance

- **File Recovery:** Understanding Ext4 structures enables forensic investigators to recover deleted evidence.
- **Privacy Implications:** Deleted files remain recoverable until overwritten – critical for data sanitization policies.
- **System Integrity:** File system analysis helps detect tampering or unauthorized modifications.

---

## 📚 References

- [Ext2/Ext3/Ext4 File System Format](https://ext4.wiki.kernel.org/)
- [Understanding EXT4: Extents – SANS](https://www.sans.org/)
- [An analysis of Ext4 for digital forensics – Fairbanks (2012)](https://www.sciencedirect.com/science/article/abs/pii/S1742287612000773)

---

*Part of Academic Curriculum – 7COSC003 Fundamentals of Security Technology, University of Westminster*