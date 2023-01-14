FROM grafana/grafana:latest
ADD provisioning/datasources/conf.yaml /etc/grafana/provisioning/datasources
ADD provisioning/dashboards/conf.yaml /etc/grafana/provisioning/dashboards
ADD provisioning/grafana.ini /etc/grafana/
COPY ./dashboards /var/lib/grafana/dashboards/DevOps

EXPOSE 3000