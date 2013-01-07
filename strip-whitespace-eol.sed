# Usage:
# find . -name '*.py' | xargs sed -i -r -f strip-whitespace-eol.sed

# Remove tabs and 2 or more spaces at end of line
s/(	)+$//g 
s/(  )+$//g
s/^ $//g
