# Base image - httpd:2.4
FROM httpd:2.4

# Copy web-content folder to httpd default web content directory
COPY web-content/ /usr/local/apache2/htdocs/
