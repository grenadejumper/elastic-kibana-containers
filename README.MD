#elastic-kibana-containers

Dockerized Elasticsearch and Kibana - served by an Nginx-container. Get Elasticsearch and Kibana up and running with a simple `docker-compose up` command. Access to both Kibana and the Elasticsearch API endpoint is password-protected by default, using Nginx basic auth.

**Steps**:

1. Clone this repo
2. Edit the username/password/data-folder-path in Dockerfile (optional)
3. Place ssl certificates named nginx.crt and nginx.key in the ssl subdirectory (See [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-create-an-ssl-certificate-on-nginx-for-ubuntu-14-04) for more info on how to generate these files).
4. Edit the server_name lines in nginx.conf so they correspond with your server domain name. 
5. Run `docker-compose up`
6. Start pushing logs to Elasticsearch using your favorite logger ([logstash](https://www.elastic.co/products/logstash)/[fluentd](http://www.fluentd.org/)/[log4net](https://github.com/jptoto/log4net.ElasticSearch)).

This will create three containers. One container for Kibana, one for Elasticsearch, and an Nginx-container that exposes access to both services. Go to `http://<host>:81/` for Kibana, and `http://<host>:82/` for Elasticsearch. Default username/password is `kibana`/`elastic`
