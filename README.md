# Automated System Info Extractor

Automated System Info Extractor

Bash script that does the following:
3.1. Identify the system's public IP.
3.2. Identify the private IP address assigned to the system's network interface.
3.3. Display the MAC address (masking sensitive portions for security).
3.4. Display the percentage of CPU usage for the top 5 processes.
3.5. Display memory usage statistics: total and available memory.
3.6. List active system services with their status.
3.7. Locate the Top 10 Largest Files in /home.

Tools and Commands used: curl, ifconfig/ip addr, top, ps, du, find, standard Bash scripting utilities.
