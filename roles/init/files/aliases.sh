alias c="clear"
alias delete="rm -rf"
alias reload="source ~/.bashrc"

alias start="sudo systemctl start"
alias stop="sudo systemctl stop"
alias restart="sudo systemctl restart"

alias apty="sudo apt-get"
alias stail="sudo tail -f"
alias ports="sudo netstat -lntp"
alias start_couch="docker run -it --name couchdb -p 5984:5984 -d apache/couchdb:1.6.1"

nginx_access_logs() {
	sudo tail -f /var/log/nginx/"$1".access.log
}

nginx_error_logs() {
	sudo tail -f /var/log/nginx/"$1".error.log
}

nginx_site() {
  sudo vim /etc/nginx/sites-available/"$1".conf
}
