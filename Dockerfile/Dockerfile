# Use the official lightweight Nginx image.
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the static content into the container
COPY ./index.html .

# Make port 80 available to the world outside this container
EXPOSE 80

# Use the default nginx configuration
CMD ["nginx", "-g", "daemon off;"]

