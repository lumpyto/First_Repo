# Use a lightweight NGINX web server image
FROM nginx:alpine

# Copy your demo page into NGINX's default HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (default for web servers)
EXPOSE 80

# Start NGINX automatically when the container runs
CMD ["nginx", "-g", "daemon off;"]

# Adding the variables to get the DEPLOY_DATE and BUILD_ID
COPY index.html /$MY_PATH/index.html
