# macos-cleaner
Find duplicate(s) files, folders, applications, and more without having to download or buy an app that ends up being another thing you need to delete. 

Find Duplicate Files on your macOS, Linux, and Unix devices. 

This repository contains a bash script to find duplicate files in one or more directories.
Depending on the size of the directories to be search, this may take a little bit to complete as it is through. It does not delete or remove any files it only tells you where the duplicates are located so that you can delete them after you confirm you want them to be deleted. 

Running this as sudo is recommend and if it looks like it has stalled, just give it a minute. Especially if you opt to search all directories this is only as fast as the hardware of your device permits. 

Usage

To use the script, follow these steps:

Clone the repository to your local machine using Git.
<p dir="auto"><code>$ git clone https://github.com/exampleuser/gitup-find-duplicates.git </code></p>
<p data-sourcepos="19:1-19:33" dir="auto"><big><code><code>Change into the cloned directory.</code></code></big></p>
<p data-sourcepos="21:3-21:22" dir="auto">$ cd find-duplicates</p>
<p data-sourcepos="23:2-23:28" dir="auto"><big><code><code>Make the script executable.</code></code></big></p>
<p data-sourcepos="25:3-25:31" dir="auto">$ chmod +x find_duplicates.sh</p>
<p data-sourcepos="27:1-27:52" dir="auto"><big><code><code>Run the script and select the directories to search.</code></code></big></p>
<p data-sourcepos="29:3-29:24" dir="auto">$ ./find_duplicates.sh</p>

The script will prompt you to select up to 5 directories to search for duplicate files. You can select the directories by entering the corresponding numbers separated by spaces. If you don't make a selection, the script will search all directories by default.

Once the script finishes, it will print a list of duplicate files that were found. The temporary files created during the search will be cleaned up automatically.
Contributing

If you encounter any issues or have suggestions for improving the script, please feel free to open an issue or pull request in this repository. 
License

This script is licensed under the MIT License. See the LICENSE file for more information.
