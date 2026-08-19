
#!/bin/bash

# Enable exit on error
set -e

# Example 1: Check exit code manually (temporarily bypass set -e)
echo "--- Example 1: Checking exit codes ---"

# Use '|| true' to prevent 'set -e' from killing the script on failure
ls /etc/passwd || true
echo "Exit code of successful ls command: $?"

# Fix the '1s' typo to 'ls' and bypass set -e
ls /nonexistent 2>/dev/null || true
echo "Exit code of failed ls command: $?"


# Example 2: Run a block that can fail safely
echo -e "\n--- Example 2: Handling failures without crashing ---"

# Disable exit-on-error temporarily
set +e

ls /nonexistent_folder 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Warning: Folder does not exist, but the script keeps running."
fi

# Re-enable exit-on-error
set -e


# Example 3: Clean up on sudden exit using TRAP
echo -e "\n--- Example 3: Using a TRAP for unexpected errors ---"

cleanup() {
    echo "ALERT: Script failed at line $1! Performing cleanup..."
}
# Catch any error signal (ERR) and pass the line number
trap 'cleanup $LINENO' ERR

# This intentional failure will trigger the trap and safely stop the script
ls /final_error_test_folder
