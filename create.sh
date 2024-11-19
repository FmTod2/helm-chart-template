#!/usr/bin/env bash

# Check if the chart name is provided as a parameter
if [ -z "$1" ]; then
  # Ask the user for the chart name
  read -p "Enter the chart name: " chart_name
else
  chart_name=$1
fi

# Clone the repository
git clone --depth=1 https://github.com/FmTod2/helm-chart-template $chart_name

# Navigate into the cloned directory
cd $chart_name

# Remove the existing Git history
rm -rf .git

# Replace the chart name in Chart.yaml and template files
grep -rl 'example' . | xargs sed -i "s/example/$chart_name/g"

# Notify the user
echo "Chart $chart_name has been set up. Customize it by modifying the values.yaml and template files in the templates/ directory."