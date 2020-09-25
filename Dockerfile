# Step:1 Ubuntu (base image)
From ubuntu:latest

# Step:2 nginx install
RUN apt-get update && apt-get install -y -q ngnix

# Step:3 file copy
COPY ./index.html /usr/share/nginx/html/

# Step:4
EXPOSE80

# Step:5
CMD["nginx", "-g", "daemon off;"]
