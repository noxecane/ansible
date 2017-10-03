# Certbot Role Docs

## Main Task
Installs certbot and creates an SSL certificate, a key, and a dhparms file
- certbot_domains|`list<url>`: A list of urls
- certbot_email|`email`: email for the server admin to be notified if any
  issues arise