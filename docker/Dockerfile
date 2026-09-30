# Use lightweight Nginx Alpine base image
FROM nginx:alpine

# Remove default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your application static files into Nginx public web directory
COPY application/ /usr/share/nginx/html/

# Expose HTTP port
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
