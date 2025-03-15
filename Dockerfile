# Use the official nginx image as the base image
FROM nginx:alpine

# Set the working directory to the nginx html directory
WORKDIR /usr/share/nginx/html

# Copy the contents of the dist directory to the nginx html directory
COPY ./dist/ .

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]