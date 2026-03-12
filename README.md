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
