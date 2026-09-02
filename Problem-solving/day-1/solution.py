# Open the log file to read it
with open("server.log", "r") as file:
    # Loop through the file line by line
    for line in file:
        # Split the line into separate words
        parts = line.split()
        # If the line isn't empty and starts with error code 500
        if parts and parts[0] == "500":
            # Clean up the line and print it
            print(line.strip()) 

