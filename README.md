## Project url

Built according to the requirements of
https://roadmap.sh/projects/server-stats

## Purpose

Simple tool to analyze the main stats of server performance:
usage of CPU, hard drive(s) and random access memory.

## Structure

We have the main system_stats.sh script with connected modules / functions (can be found in ./modules folder).
When script will be executed you will see available options and you will be able either execute all functions at once or choose required information about your system.

## Main script and modules explanation

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
7) System information
Please, insert required option:
</details>

5. Depending on the chosen option you will see either a full output of this script or partial information which you requested.

![Server performance stats script menu showing options for CPU usage, RAM usage, disk usage, and process monitoring](https://i.imgur.com/Hg7mXVT.png)
