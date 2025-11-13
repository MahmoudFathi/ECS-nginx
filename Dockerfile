# Use the official Nginx base image
FROM nginx
# Remove the default Nginx index.html
RUN rm /usr/share/nginx/html/index.html

# Copy the custom index.html file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# The default command to start Nginx is already in the base image's entrypoint, 
# so we don't need to specify CMD here.
