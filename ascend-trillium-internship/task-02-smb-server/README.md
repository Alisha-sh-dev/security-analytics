# SMB Server Implementation

## 📖 Overview

This project demonstrates how to set up an SMB (Server Message Block) file share on **Windows** and **Parrot Linux** (SAMBA), and automate file transfers using a Python script with the `pysmb` library.

## 🎯 Objective

Create a Python script that:
- Creates a shared folder
- Copies data from the local machine to a remote SMB share
- Uses only the SMB protocol for the transfer

---

## 🖥️ Server Setup

### Windows (SMB Server)

1. **Enable SMB** – Control Panel → Programs → Turn Windows features on or off → check *SMB 1.0/CIFS File Sharing Support* and *SMB Direct*.
2. **Create a Shared Folder** – Right‑click a folder → Properties → Sharing → Advanced Sharing → check *Share this folder*.
3. **Set Permissions** – Click *Permissions* and allow Full Control for the desired user.
4. **Configure Firewall** – Allow *File and Printer Sharing* in Windows Defender Firewall.

### Linux (SAMBA Server on Parrot)

```bash
# Install Samba
sudo apt update && sudo apt install samba

# Create a shared directory
sudo mkdir -p /srv/samba/shared
sudo chmod 0775 /srv/samba/shared
sudo chown nobody:nogroup /srv/samba/shared

# Edit /etc/samba/smb.conf – add:
[SharedFolder]
   path = /srv/samba/shared
   available = yes
   valid users = smbuser
   read only = no
   browsable = yes
   public = yes
   writable = yes

# Create a Samba user
sudo adduser smbuser
sudo smbpasswd -a smbuser   # set password (e.g., toor)

# Restart service
sudo systemctl restart smbd

# Allow firewall (if enabled)
sudo ufw allow samba