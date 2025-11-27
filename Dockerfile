# Use nginx to serve static files
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your built app from dist/ into nginx html directory
COPY ./dist /usr/share/nginx/html

# Expose port 80 from container
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
