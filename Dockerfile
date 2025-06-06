# Use a lightweight Nginx base image
FROM nginx:alpine

# Remove default Nginx static files (optional but cleaner)
RUN rm -rf /usr/share/nginx/html/*

# Copy all local files (like index.html, CSS, etc.) to Nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 (optional, useful for clarity/documentation)
EXPOSE 80

