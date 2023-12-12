# Use an official Nginx image as a base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm -v /etc/nginx/nginx.conf

# Copy your Nginx configuration file to the container
COPY nginx.conf /etc/nginx/

# Create a directory for your website files
WORKDIR /usr/share/nginx/html

# Copy the website files to the container
COPY . .

# Expose the default HTTP port
EXPOSE 80

# Command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
