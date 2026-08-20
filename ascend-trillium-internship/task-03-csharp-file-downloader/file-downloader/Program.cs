using System;
using System.IO;         // For file operations
using System.Net.Http;   // For HTTP requests and responses
using System.Threading.Tasks;  // For asynchronous programming

class FileDownloader
{
    // Reusable HttpClient instance
    private static readonly HttpClient client = new HttpClient();

    static async Task Main(string[] args)
    {
        // Prompt for file ID
        Console.WriteLine("Enter the File ID to download:");
        string fileId = Console.ReadLine();  // Get user input

        // Construct file URL
        string serverUrl = "http://localhost:5000/files";
        string fileUrl = $"{serverUrl}/{fileId}";

        try
        {
            // Download the file
            await DownloadFileAsync(fileUrl, fileId);
            Console.WriteLine("File downloaded successfully.");
        }
        catch (Exception ex)
        {
            // Handle download errors
            Console.WriteLine($"Error: {ex.Message}");
        }
    }

    // Download file asynchronously
    private static async Task DownloadFileAsync(string url, string fileId)
    {
        // Fetch file from server
        HttpResponseMessage response = await client.GetAsync(url);
        response.EnsureSuccessStatusCode();  // Ensure successful response

        // Read file content
        byte[] fileBytes = await response.Content.ReadAsByteArrayAsync();
        
        // Define file name
        string fileName = $"downloaded_file_{fileId}.dat";  // Adjust extension if needed
        
        // Save file to disk
        await File.WriteAllBytesAsync(fileName, fileBytes);
    }
}
