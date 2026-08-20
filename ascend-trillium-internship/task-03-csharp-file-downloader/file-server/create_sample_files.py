import os  # For operating system interactions

def create_files_directory():
    # Directory to create files in
    files_directory = 'files'

    # Create directory if it doesn't exist
    os.makedirs(files_directory, exist_ok=True)

    # Create files named 1.txt to 200.txt
    for i in range(1, 201):
        file_path = os.path.join(files_directory, f'{i}.txt')  # File path
        with open(file_path, 'w') as file:
            file.write(f'This is the content of file {i}.\n')  # File content

    print(f'{200} files created in "{files_directory}".')

# Run the function if this script is executed directly
if __name__ == '__main__':
    create_files_directory()
