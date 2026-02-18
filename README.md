# Debian System Maintenance Script

A simple Bash script that performs a complete system update and cleanup on Debian-based systems.

---

## Features

- Updates package lists (`apt-get update`)
- Upgrades all installed packages (`apt-get upgrade`)
- Performs distribution upgrade for better dependency handling (`apt-get dist-upgrade`)
- Removes unused/orphaned packages (`apt-get autoremove`)
- Cleans up apt cache (`apt-get autoclean`)
- Logs all operations with timestamps to `/var/log/system-update.log`

---

## Usage

1. Make the script executable:

```bash
chmod +x debian_maintenance_script.sh
```

2. Run with sudo (root privileges required):

```bash
sudo ./debian_maintenance_script.sh
```

---

## Log File

All operations are logged to:

```
/var/log/system-update.log
```

Each run is timestamped for easy tracking.

---

## Automation (Optional)

To run this script automatically, add it to your crontab:

```bash
sudo crontab -e
```

Example: Run every Sunday at 3 AM:

```cron
0 3 * * 0 /path/to/debian_maintenance_script.sh
```

---

## Requirements

- Debian-based system (Debian, Ubuntu, Linux Mint, etc.)
- Root/sudo privileges
- Bash shell

---

## Caution

- This script runs with `-y` flag, meaning it will auto-confirm all prompts
- Review the log file after execution to check for any issues
- Consider testing on a non-production system first

---

## License

[MIT](LICENSE) License - Feel free to use and modify as needed.
