#!/bin/sh

# Send the header so that i3bar knows we want to use JSON:
echo '{"version":1}'


# Begin the endless array.
echo '['

#echo '[],'
#echo '[' 
#echo '{ "full_text": "fdsafdsafdsafdsa"  , "color" : "\#fff555" }'
#echo '],'
# We send an empty first array of blocks to make the loop simpler:

#echo '],'
# Now send blocks with information forever:
exec conky -c $HOME/.config/i3/conkyrc-main
