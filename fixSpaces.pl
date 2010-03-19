
# 1. perl -p -i fixSpaces.pl *.py
#
# This removes extra space between brackets and parentheses only on those 
# lines where it won't mess up indentation.
# Note: sed doesn't allow non greedy.
#
# 2. Commit.
#
# 3. Manually search using editor, and fix indentation along the way.

s|\( (.*?) \)|\(\1\)|g;
s|\[ (.*?[^,]) \]|\[\1\]|g;
# Leave space after last comma in list.
s|\[ (.*?,) \]|\[\1 \]|g;

# Input:
# 
# ( foo ) ( bar )
# ( ( foo ) )
# 
# [ foo ] [ bar ]
# [ [ foo ] ]
# 
# function( argument1,
#           argument2 )
#
# [ item, ]


# Output after 1 run:
# 
# (foo) (bar)
# (( foo) )
#
# [foo] [bar]
# [[ foo] ]
#
# function( argument1,
#           argument2 )
#
# [item, ]


# Output after 2 runs:

# (foo) (bar)
# ((foo))
#
# [foo] [bar]
# [[foo]]
#
# function( argument1,
#           argument2 )
#
# [item, ]


