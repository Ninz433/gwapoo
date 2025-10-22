# Step 1: Use official Nginx image from Docker Hub
FROM nginx:alpine

# Step 2: Set working directory
WORKDIR /usr/share/nginx/html

# Step 3: Copy application files
COPY . .

# Step 4: Expose port 8080
EXPOSE 8080

# Step 5: Update Nginx to listen on port 8080
RUN sed -i 's/listen 80;/listen 8080;/' /etc/nginx/conf.d/default.conf
