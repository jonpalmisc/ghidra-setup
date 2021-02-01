# ghidra-setup

This is a small script for Inno Setup to package Ghidra for Windows. It will
place Ghidra in the program files directory and create start menu entries
and/or desktop shortcuts.

# Prebuilt installers

You can find prebuilt installers in the releases section.

# Building installers 

1. Download and install [Inno Setup](https://jrsoftware.org/isinfo.php).
2. Download a Ghidra release and rename the folder to "ghidra", or modify the
   `SourcePath` variable in `setup.iss`.
3. (Optional) Update the `ProgramVersion` variable in `setup.iss`; the default
4. (Optional) Update the `OutputPath` variable in `setup.iss`; the default is
   "out".
5. Compile the installer with Inno Setup.
6. Install and and have fun!

**Note: Remember that Ghidra requires JDK 11 or greater!**

# License

Do what you want.

