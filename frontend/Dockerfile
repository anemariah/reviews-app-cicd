# Use an official Nginx runtime as a parent image
FROM nginx:1.21.0-alpine

# Set working directory in container
WORKDIR /usr/share/nginx/html

# Copy HTML with embedded Javascript and CSS
COPY ./ ./

# Make port 80 available to the world outside this container
EXPOSE 80


 # Start Nginx when the container launches
CMD ["nginx","-g","daemon off;"]
