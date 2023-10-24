

# Pull Kali Linux OS from a Docker Hub repository
FROM kalilinux/kali-rolling

# Update the image
RUN apt-get update

# Install the following packages for our custom image
RUN apt-get install -y \
    nmap 
# Each student must fill this file with the correct information
LABEL authors = "IvanBravoSanchez 22056779"
LABEL version = "1.0"
LABEL description = "Dockerfile for a custom image of Kali Linux OS"

# Set credentials for the root user, ROOT = all privileges, 21535220 = password
ENV USER root
ENV PASSWORD 22056779

# Reduce the size of the image by removing nmap, metasploit
RUN apt-get clean

# Expose ports for nmap and metasploit
EXPOSE 500 400

# Run the following commands when the container is created
CMD ["bash"]

# Build the image
# docker build -t custom-kali-image-21535220 .
# Run the container
# docker run -it --rm --name custom-kali-container-21535220 custom-kali-image-21535220
