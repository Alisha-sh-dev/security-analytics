import os
from smb.SMBConnection import SMBConnection

# Define the local directory and file to transfer
local_directory = r"C:\Users\ammok\Desktop\Ascend Internship Tasks\Task#2-SMB_server\SharedFolder"
file_to_copy = 'example.txt'
source_file_path = os.path.join(local_directory, file_to_copy)

# SMB server details
remote_server_name = 'parrot'
remote_server_ip = '192.168.58.129'
username = 'smbuser'
password = 'toor'
remote_share_name = 'SharedFolder'
local_machine_name = 'DESKTOP-V49PMKS'

# Create an SMB connection
conn = SMBConnection(username, password, local_machine_name, remote_server_name, use_ntlm_v2=True)

try:
    # Connect to the remote server
    conn.connect(remote_server_ip, 445)
    
    # Check if the file exists
    if not os.path.isfile(source_file_path):
        raise FileNotFoundError(f"{source_file_path} does not exist")

    # Open the file and copy it to the remote server
    with open(source_file_path, 'rb') as file_obj:
        conn.storeFile(remote_share_name, file_to_copy, file_obj)

    print(f"File '{file_to_copy}' copied successfully to the remote server.")

except Exception as e:
    print(f"An error occurred: {e}")

finally:
    conn.close()
