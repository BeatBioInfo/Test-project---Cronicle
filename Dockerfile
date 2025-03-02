# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Install dependencies
RUN git clone https://github.com/jhuckaby/Cronicle.git . && \
    npm install

# Expose the default Cronicle web interface port
EXPOSE 3012

# Set up entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Start Cronicle
CMD ["/entrypoint.sh"]

