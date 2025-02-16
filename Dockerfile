# Use the smaller Alpine-based Nginx image
FROM nginx:alpine

# Copy the static website files into the Nginx web directory
COPY public /usr/share/nginx/html

# Expose port 80 to allow web traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
