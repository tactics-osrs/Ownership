# Ownership

This repository contains scripts to take full ownership and grant full control permissions of a file or folder in Windows. There are two versions of the script: a Batch version and a PowerShell version.

## Batch Version

The Batch script prompts for a file or folder path and then attempts to take ownership and grant full control permissions. If the path does not exist, it will prompt for a new path.

To run the Batch script, follow these steps:

1. Open a command prompt with administrative privileges.
2. Navigate to the directory where the Batch script is located. (cd "directory location here") I.E. cd C:\Users\abcd\Desktop
3. Run the script by typing its name and pressing Enter. I.E. Ownership

## PowerShell Version

The PowerShell script also prompts for a file or folder path and then attempts to take ownership and grant full control permissions. It includes error handling to catch invalid paths and other errors.

To run the PowerShell script, follow these steps:

1. Open PowerShell with administrative privileges.
2. Navigate to the directory where the PowerShell script is located.
3. Run the script by typing `.\Ownership.ps1` and pressing Enter.

## Disclaimer

Modifying file permissions can have significant effects on your system. Always proceed with caution and only change permissions when necessary. It's also a good idea to create a system restore point before making such changes. 

If you're not comfortable with these steps, consider seeking help from a professional or someone who is familiar with Windows system administration.
I do not claim responsible for any improper/mis-use of this product. Made strictly for personal use, published for public access.
