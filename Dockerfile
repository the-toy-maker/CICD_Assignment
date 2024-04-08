# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the contents of the GitHub repository into the container
COPY . /app

# Install any dependencies specified in requirements.txt if present
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables if needed
# ENV ENV_VARIABLE_NAME=VALUE

RUN python train.py

# Command to run your application
# For example:
CMD ["python", "test.py"]

