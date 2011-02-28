# Usage:
# find . -name '*.py' | xargs sed -i -r -f strip-space-before-comma.sed

# Remove tabs and 2 or more spaces at end of line
s/ ,/,/g 

