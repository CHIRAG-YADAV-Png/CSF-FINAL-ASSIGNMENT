#!/bin/bash
# career_setup.sh - create career folder structure and log system uptime
BASE_DIR="$HOME/Career/Applications"
mkdir -p "$BASE_DIR/Resumes" "$BASE_DIR/CoverLetters" "$BASE_DIR/Scripts" "$BASE_DIR/Notes"
# Copy a template resume if exists
if [ -f "$HOME/Templates/Resume_template.pdf" ]; then
cp "$HOME/Templates/Resume_template.pdf" "$BASE_DIR/Resumes/Resume_template_$(.pdf")
# Create README
cat > "$BASE_DIR/README.md" <<EOF
# Job Applications
Structure created on: $(date)
EOF
# Log system uptime
echo "---" >> "$BASE_DIR/Scripts/setup_log.txt"
echo "Setup run at: $(date)" >> "$BASE_DIR/Scripts/setup_log.txt"
uptime >> "$BASE_DIR/Scripts/setup_log.txt"
echo "Created structure at: $BASE_DIR"
