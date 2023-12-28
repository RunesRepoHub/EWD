# Use the official lightweight Nginx image.
# https://hub.docker.com/_/nginx
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY ~/EWD/index.html /usr/share/nginx/html/index.html

# Make port 80 available to the world outside this container
EXPOSE 80

# Use the default nginx configuration
CMD ["nginx", "-g", "daemon off;"]

