# Base Image
FROM jupyter/minimal-notebook:latest

# Dockerfile author / maintainer 
MAINTAINER Henri van den Bulk

# Update application repository list and install the Redis server. 
RUN apt-get update

RUN pip install .

# Expose default port
EXPOSE 8888

# Set the default command
# ENTRYPOINT ["/usr/bin/redis-server"]
