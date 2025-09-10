# Use the official Nginx image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove the default index.html provided by Nginx
RUN rm -rf ./*

# Copy your index.html (and other static files if any)
COPY index.html .

# (Optional) If you have CSS/JS/images, copy the whole folder
# COPY static/ ./static/

# Expose port 80
EXPOSE 80

# Default command (already runs nginx)
CMD ["nginx", "-g", "daemon off;"]
