## Purpose

Simple tool to analyze the main stats of server performance:
usage of CPU, hard drive(s) and random access memory.

## Structure

We have the main system_stats.sh script with connected modules / functions (can be found in ./modules folder).
When script will be executed you will see available options and you will be able either execute all functions at once or choose required information about your system.

## How to run it?

1. Clone repo to your machine (one of the options to use: git clone https://github.com/Ilgarzxc/01_Server_Performance_Stats.git)
2. Since we have multiple files in ./modules folder and all these files along with our system_stats.sh need to be executable, we need to start from a single-line command (should be executed from downloaded repo folder) `find . -type f -name "*.sh" -exec chmod +x {} \;` this command will make all .sh files in the designated folder executable for all users on this machine.
3. Run the script:
   If you're currently in the repo directory (can be checked with `pwd`), then run it with `./system_stats.sh`
4. You will see the following dialogue with options:
<details>
<summary>expand</summary>
PLEASE, CHOOSE REQUIRED SERVER INFORMATION:

1) Overview
2) CPU Usage
3) RAM Usage
4) Disk Usage
5) Top 5 processes by CPU usage
6) Top 5 processes by memory usage
Please, insert required option:
</details>

5. Depending on the chosen option you will see either a full output of this script or partial information which you requested.
<details>
<summary>example</summary>
CPU USAGE:
|--------------------------------------------------------------|
| Category                                 | %                 |
|--------------------------------------------------------------|
| Un-ninced user processes                 | 0.0               | 
| Kernel processes                         | 2.6               | 
| Niced user processes                     | 0.0               | 
| Kernel idle handler                      | 97.4              | 
| Waiting for I/O completion               | 0.0               | 
| Servicing hardware interrupts            | 0.0               | 
| Servicing software interrupts            | 0.0               | 
| Time stolen by the hypervisor (optional) | 0.0               | 
|--------------------------------------------------------------|
DISK USAGE:
|--------------------------------------------------------------|
| Total space                              | 104G              | 
| Used space                               | 16G               | 
| Free space                               | 84G               | 
| Percentage of used space                 | 16%               | 
|--------------------------------------------------------------|
RAM USAGE:
|--------------------------------------------------------------|
| Total RAM                                | 7.8Gi             | 
| Used RAM                                 | 1.3Gi             | 
| Free RAM                                 | 3.2Gi             | 
| % of used RAM                            | 17.13%            | 
|--------------------------------------------------------------|
TOP 5 PROCESS ORDER BY CPU USAGE:
|-----------------------------------------------------------------|
|Process                                  | CPUUsg | PID          | 
|-----------------------------------------------------------------|
|/usr/bin/gnome-shell                     | 1.2    | 3530         |
|/usr/libexec/gnome-terminal-server       | 0.2    | 6403         |
|/usr/bin/ibus-daemon                     | 0.0    | 3634         |
|gjs                                      | 0.0    | 9999         |
|/usr/bin/VBoxDRMClient                   | 0.0    | 2102         |
|-----------------------------------------------------------------|
TOP 5 PROCESS ORDER BY RAM USAGE:
|-----------------------------------------------------------------|
|Process                                  | RAMUsg | PID          | 
|-----------------------------------------------------------------|
|/usr/bin/gnome-shell                     | 3.8    | 3530         |
|/usr/bin/nautilus                        | 2.2    | 6250         |
|/usr/bin/Xwayland                        | 1.1    | 3623         |
|/usr/libexec/mutter-x11-frames           | 1.1    | 4216         |
|/usr/libexec/gsd-xsettings               | 1.0    | 4094         |
|-----------------------------------------------------------------|
</details>
