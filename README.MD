#elastic-kibana-containers

Dockerized Elasticsearch and Kibana - served by an Nginx-container. Get Elasticsearch and Kibana up and running with a simple `docker-compose up` command. Access to both Kibana and the Elasticsearch API endpoint is password-protected by default, using Nginx basic auth.

**Steps**:

1. Clone this repo
2. Edit the username/password/data-folder-path in Dockerfile (optional)
3. Run `docker-compose up`
4. Start pushing logs to Elasticsearch using your favorite logger ([logstash](https://www.elastic.co/products/logstash)/[fluentd](http://www.fluentd.org/)/[log4net](https://github.com/jptoto/log4net.ElasticSearch)).

This will create three containers. One container for Kibana, one for Elasticsearch, and an Nginx-container that exposes access to both services. Go to `http://<host>/` for Kibana, and `http://<host>:81/` for Elasticsearch. Default username/password is `kibana`/`elastic`

**TODO**: 

* Add SSL support
