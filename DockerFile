FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx index page
RUN rm -rf *

# Copy landing page files into the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
