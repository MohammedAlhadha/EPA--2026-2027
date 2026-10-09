
#!/bin/bash

# Display usage instructions if no argument is supplied
if [ "$#" -eq 0 ]; then
    echo "Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]"
    exit 1
fi

# Check that the argument is a positive integer
if ! [[ "$1" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Please provide a positive integer."
    exit 1
fi

# Count the available CPU cores
num_cpu=$(nproc)
required_cpu=$1

# Compare available cores with required cores
if [ "$num_cpu" -lt "$required_cpu" ]; then
    echo "Error: Not enough CPU cores."
    echo "Required: $required_cpu, Available: $num_cpu"
    exit 1
else
    echo "OK: Enough CPU cores are available."
    echo "Required: $required_cpu, Available: $num_cpu"
fi

