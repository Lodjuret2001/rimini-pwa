#!/bin/bash

# Define the output file
OUTPUT_FILE="project_report.txt"

# Start with an empty file
> $OUTPUT_FILE

# Header for the report
echo "=== Project Report ===" >> $OUTPUT_FILE
echo "Generated on: $(date)" >> $OUTPUT_FILE
echo >> $OUTPUT_FILE

# Step 1: Output the tree structure of the src directory, ignoring hidden files
echo "=== Folder Structure (src/) ===" >> $OUTPUT_FILE
find src -type d -not -path "*/.*" | sed -e 's|[^/]*/|  |g' -e 's|/|-- |g' >> $OUTPUT_FILE
echo >> $OUTPUT_FILE

# Step 2: Loop through all files in src, ignoring hidden files, and output their content
echo "=== File Contents ===" >> $OUTPUT_FILE
echo >> $OUTPUT_FILE

# Find all non-hidden files in the src directory and loop through them
find src -type f -not -path "*/.*" | while read -r FILE; do
  # Add the file path as a header
  echo "PWD (${FILE})" >> $OUTPUT_FILE
  echo >> $OUTPUT_FILE

  # Output the content of the file
  cat "$FILE" >> $OUTPUT_FILE
  echo >> $OUTPUT_FILE
  echo "------------------------------------" >> $OUTPUT_FILE
  echo >> $OUTPUT_FILE
done

# Completion message
echo "Project report generated: $OUTPUT_FILE"