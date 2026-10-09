
#!/bin/bash

# Check whether the required number of CPU cores was supplied
if [ "$#" -eq 0 ]; then
    echo "Usage: lab04_cpu_count_3.sh [MAX_NUM_CORES]"
    exit 1
fi

# Validate the argument
if ! [[ "$1" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Please provide a positive integer."
    exit 1
fi

# Count CPU cores and compare with the requirement
num_cpu=$(nproc)
required_cpu=$1

if [ "$num_cpu" -lt "$required_cpu" ]; then
    echo "Error: Not enough CPU cores."
    echo "Required: $required_cpu, Available: $num_cpu"
else
    echo "OK: Enough CPU cores are available."
    echo "Required: $required_cpu, Available: $num_cpu"
fi

# Ask the user whether to display additional information
read -r -p "Display CPU information? (yes/no): " answer

# Handle the user's response
case "$answer" in
    yes|YES|y|Y)
        echo "The nproc command reports the available processing units."
        echo "The CPU count is: $num_cpu"
        ;;
    no|NO|n|N)
        echo "CPU information display skipped."
        ;;
    *)
        echo "Invalid choice. Please enter yes or no."
        ;;
esac

# Explain the additional commands
echo "The read command accepts input from the user."
echo "The case command selects an action based on the input."



