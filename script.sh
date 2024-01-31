#!/bin/bash

# Read environment variables
SESSION_COOKIE=${SESSION_COOKIE:-default_session_cookie}
URL=${URL:-default_url}
DISCORD_CHANNEL_ID=${DISCORD_CHANNEL_ID:-default_discord_channel_id}

# Construct the command
COMMAND="python bot.py -s $SESSION_COOKIE -u $URL -c $DISCORD_CHANNEL_ID"

# Print the command
echo "Executing command: $COMMAND"

# Execute the command
eval $COMMAND
