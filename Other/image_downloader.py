import os
import requests
from http.server import HTTPServer, SimpleHTTPRequestHandler
from pathlib import Path
import threading
import time

def download_images():
    """Download images to Script_Assets folder"""
    # Create folder
    folder_path = Path("Script_Assets")
    folder_path.mkdir(exist_ok=True)
    
    # Images to download
    images = {
        "forge_icon.png": "https://raw.githubusercontent.com/Something478/Scripts/main/images/Forge_icon.png",
        # Add more images here as needed
    }
    
    print("Downloading images...")
    for filename, url in images.items():
        file_path = folder_path / filename
        try:
            response = requests.get(url)
            response.raise_for_status()
            
            with open(file_path, 'wb') as f:
                f.write(response.content)
            print(f"✓ Downloaded: {filename}")
        except Exception as e:
            print(f"✗ Failed to download {filename}: {e}")

def start_local_server():
    """Start a local HTTP server to serve the images"""
    os.chdir("Script_Assets") 
    
    port = 4343
    server = HTTPServer(('localhost', port), SimpleHTTPRequestHandler)
    print(f"📡 Local server running at: http://localhost:{port}")
    print("Server is ready! Now run the Roblox script.")
    
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\n🛑 Server stopped")

if __name__ == "__main__":
    download_images()
    
    start_local_server()