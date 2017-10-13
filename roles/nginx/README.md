# Nginx Role Docs
All configurations generated require SSL certificates

## Main Task
This installs nginx and sets up the default config
- nginx_user::`str`: the user that runs nginx (www-data)
- nginx_disable_default::`bool`: remove defualt config(true)
- nginx_log_dir::`path`: where to store logs(/var/log/nginx)
- nginx_create_site::`bool`: create a site. Make sure all to 

## Site Task
Creates configuration for a static website
- **site_domain**::`url`: the domain name of the site
- **site_certificate**::`path`: path to ssl certificate
- **site_ca_certificate**::`path`: path to trusted certificate. Without this OSCP
  will not work.
- **site_certificate_key**::`path`: path to the key of the ssl certificate
- **site_dhparam**::`path`: path to general or specific dhparams file
- site_use_stapling::`bool`: use ssl stapling(true)
- site_is_extra_secure::`bool`: make ssl config stricter(false)
- site_is_extra_fast ::`bool`: extra cache settings(false)
- **site_web_root**::`path`: path to static files
- site_has_custom_errors::`bool`: site has custom error pages for 50x 
  errors and 404 pages named `404.html` and `50x.html`(false)
- site_is_app::`bool`: the site has backend(false)
- site_servers::`list<unix/http>`: a list of upstream servers either http
  or unix sockets.([])
- site_app_type::`(uwsgi,ember,proxied)`: the type of web server used for the
  backend.(proxied)
- site_app_is_clojure::`bool`: is the webserver serving a clojure app(false)
- site_app_can_stream::`bool`: can the webserver accept streams,websockets and co.(false)
- site_couchdb_is_hosted::`bool`: a couchdb instance is hosted on the same server(false)