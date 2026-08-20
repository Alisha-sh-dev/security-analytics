import os
from smb.SMBConnection import SMBConnection

# Define the local directory and remote SMB details
local_directory = r"C:\Users\ammok\Desktop\Ascend Internship Tasks\Task#2-SMB_server\SharedFolder"
remote_server_ip = '192.168.58.129'
username = 'smbuser'
password = 'toor'
remote_share_name = 'SharedFolder'
local_machine_name = 'DESKTOP-V49PMKS'

# Create an SMB connection
conn = SMBConnection(username, password, local_machine_name, 'parrot', use_ntlm_v2=True)

try:
    # Connect to the remote server
    conn.connect(remote_server_ip, 445)
    
    # Iterate over all files in the local directory
    for root, dirs, files in os.walk(local_directory):
        for file_name in files:
            # Create the full path to the local file
            local_file_path = os.path.join(root, file_name)
            
            # Open the file and copy it to the remote server
            with open(local_file_path, 'rb') as file_obj:
                remote_path = os.path.relpath(local_file_path, local_directory)
                remote_path = remote_path.replace("\\", "/")  # Samba uses forward slashes
                conn.storeFile(remote_share_name, remote_path, file_obj)

            print(f"File '{file_name}' copied successfully to the remote server.")

except Exception as e:
    print(f"An error occurred: {e}")

finally:
    conn.close()
