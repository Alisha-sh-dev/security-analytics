from flask import Flask, send_from_directory, abort  # Import Flask and utility functions

# Create Flask app instance
app = Flask(__name__)

# Directory containing files to serve
FILE_DIRECTORY = 'files'

# Route for downloading files
@app.route('/files/<path:file_name>', methods=['GET'])  # URL route for file download
def download_file(file_name):
    try:
        # Send the file from the directory, forcing download
        return send_from_directory(FILE_DIRECTORY, file_name, as_attachment=True)
    except FileNotFoundError:
        # Return 404 error if file not found
        abort(404, description=f"File {file_name} not found")

# Run the app
if __name__ == '__main__':
    # Start Flask app with debugging and external access
    app.run(debug=True, host='0.0.0.0', port=5000)
