# Pull Kali Linux OS from a Docker Hub repository
FROM kalilinux/kali-rolling

# Update the image
RUN apt-get update

# Install the following packages for our custom image
RUN apt-get install -y \
    nmap \ 
    nano \
    pip

# Create scripts with Jupyter
FROM jupyter/minimal-notebook

# Set credentials for the root user
ENV USER root
ENV PASSWORD 22056779

# Install 
RUN pip install --upgrade pip

# Expose ports for nmap and metasploit
EXPOSE 600 700

# Reduce the size of the image by removing nmap
RUN apt-get clean

# Run the following commands when the container is created
CMD ["bash"]

# End of Dockerfile
