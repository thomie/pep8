# Usage:
# find . -name '*.py' | xargs sed -i -r -f strip-space-before-comma.sed

# Remove space before comma
s/ ,/,/g 
# Add space after comma
s/,([^ ])/, \1/g 

