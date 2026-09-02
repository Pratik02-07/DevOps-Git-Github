# Devops Interview Question
## Day 1: Log Parser
This problem we extracts critical server errors from a log file. It scans a server log and filters for lines that start with an HTTP 500 Internal Server Error status code.

## File Structure

* problem.txt: The original instructions and requirements for the task.
* server.log: The input log file containing raw server event entries.
* solution.py: The Python script that reads, filters, and prints the matching log entries.

## How It Works
The script reads server.log line by line to minimize memory usage. It breaks each line into individual parts and prints the entire line if it begins with the error code 500.

## How to Run
python3 solution.py

