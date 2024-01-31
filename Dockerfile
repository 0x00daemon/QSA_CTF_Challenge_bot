# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variables
ENV SESSION_COOKIE=NONE \
    URL=NONE \
    DISCORD_CHANNEL_ID=None

# Permissions for the script
RUN chmod +x script.sh

# Start the script
CMD [ "./script.sh" ]
