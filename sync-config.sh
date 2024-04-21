#!/bin/bash

# ------------------------
# Example usage: Call the function with the filename (.zshrc in this case)
# sync-config ".zshrc"
# ------------------------

# Function to copy a specified file into project and push to Git
sync-config() {
  # Check if filename parameter is provided
  if [ -z "$1" ]; then
    echo "Please provide the filename to copy."
    return 1
  fi

  SCRIPTS_DIR="$CONFIG_DIR"

  # Check if the project directory exists
  if [ ! -d "$SCRIPTS_DIR" ]; then
    echo "Project directory does not exist. Please provide a valid path."
    return 1
  fi

  # Define the path to the specified file
  FILE_TO_COPY="$HOME/$1"

  # Check if the specified file exists
  if [ ! -f "$FILE_TO_COPY" ]; then
    echo "File $1 not found. Make sure it exists in your home directory."
    return 1
  fi

  # Copy the specified file into the project directory
  cp "$FILE_TO_COPY" "$SCRIPTS_DIR"

  # Navigate to the project directory
  cd "$SCRIPTS_DIR" || return

  # Add the specified file to the staging area
  git add "$1"

  # Commit the changes
  git commit -m "Update $1 file"

  # Push changes to GitHub
  git push
}
