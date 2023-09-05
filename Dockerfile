# Use an official Nginx runtime as the base image
FROM nginx:latest

# Copy your HTML and CSS files into the Nginx default web server directory
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html

# Expose port 80 to allow external access
EXPOSE 80

# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
