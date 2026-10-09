
#!/bin/bash

# Count the number of CPU cores
num_cpu=$(nproc)

# Get the minimum number of CPU cores required
required_cpu=$1

# Check whether enough CPU cores are available
if [ "$num_cpu" -lt "$required_cpu" ]; then
    echo "Error: Not enough CPU cores."
    echo "Required: $required_cpu, Available: $num_cpu"
    exit 1
else
    echo "OK: Enough CPU cores are available."
    echo "Required: $required_cpu, Available: $num_cpu"
fi
