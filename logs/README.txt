-----Changing the Icon Color Variant-----
The default icon variant is BLUE in this kit. If you want the GREEN variant instead, copy "winlogon.exe" from the "Green Icon" folder and paste (overwrite) it here, in the main "logs" directory.


-----Fixing/Reversing the Effects-----
To reverse everything you just did in case you are compromised and your cover is blown:

• Task Manager > select the specific "winlogon" process which has about 4,000 K in the "Memory" column > End task
• Delete the "tmp" folder (not TEMP) in C:\
• Delete the "init.dll" shortcut in the Startup folder (C:\Users\Username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\) — You might have to enable viewing hidden files and folders to see the AppData folder


-----Pro Tip-----
I choose to use the blue icon variant of the winlogon process because I can easily distinguish it, but using the green one adds more credibility at the cost of being a little tough to distinguish and kill. Also know that if you happen to kill the actual winlogon process, you will automatically be logged out of your Windows account immediately and be sent straight back to the Windows login screen.