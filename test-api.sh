exit 1

#!/bin/bash

# Call the API endpoint
response=$(curl -s http://localhost:8290/hello)

# Check if response contains expected text
if [[ "$response" == *"Hello from WSO2 Micro Integrator!"* ]]; then
    echo "API Test Passed"
    exit 0
else
    echo "API Test Failed"
    exit 1
fi