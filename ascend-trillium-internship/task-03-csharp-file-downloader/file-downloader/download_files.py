import requests  # For sending HTTP requests
import os        # For file and directory operations

# Download a file and save it to a directory
def download_file(file_name, save_directory):
    server_url = "http://localhost:5000/files"
    file_url = f"{server_url}/{file_name}"
    
    try:
        # Send GET request to the server
        response = requests.get(file_url)
        response.raise_for_status()  # Raise an error for bad responses
        
        # Save the file content
        save_path = os.path.join(save_directory, f"downloaded_{file_name}")
        with open(save_path, 'wb') as file:
            file.write(response.content)
        
        print(f"File {file_name} downloaded successfully.")
    except requests.exceptions.RequestException as e:
        print(f"Failed to download file {file_name}: {e}")

# Download multiple files from a list
def download_files(file_names, save_directory):
    for file_name in file_names:
        download_file(file_name, save_directory)

# Get the user's download choice
def get_user_choice():
    print("Choose an option:")
    print("1. Download all files (1.txt to 200.txt)")
    print("2. Download multiple files")
    print("3. Download a single file")
    return input("Enter your choice (1, 2, or 3): ")

# Handle the user's choice
def handle_download_choice(choice):
    save_directory = 'downloads'
    os.makedirs(save_directory, exist_ok=True)  # Ensure download directory exists

    if choice == '1':
        # Download all files 1.txt to 200.txt
        file_names = [f"{i}.txt" for i in range(1, 201)]
        download_files(file_names, save_directory)
    elif choice == '2':
        # Download files specified by user
        file_names_input = input("Enter file names (e.g., 1.txt, 3.txt): ")
        file_names = [name.strip() for name in file_names_input.split(',')]
        download_files(file_names, save_directory)
    elif choice == '3':
        # Download a single file specified by user
        file_name = input("Enter the file name (e.g., 1.txt): ").strip()
        download_file(file_name, save_directory)
    else:
        print("Invalid choice.")

# Main function to execute the program
if __name__ == "__main__":
    user_choice = get_user_choice()
    handle_download_choice(user_choice)
