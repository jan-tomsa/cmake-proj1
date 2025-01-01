# Use an official C++ image with CMake
FROM ubuntu:20.04

# Set non-interactive frontend for apt to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

# Set timezone (adjust as necessary)
ENV TZ=Europe/Prague

# Set the working directory
WORKDIR /app