FROM rockylinux:8
LABEL maintainer="ahubballi707@gmail.com"

# Install httpd
RUN yum install -y httpd && \
    yum clean all

# Copy a simple HTML file
COPY index.html /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Start httpd in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# Expose port 80
EXPOSE 80