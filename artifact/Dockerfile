FROM nginx:latest as nginx

# CONSUL
ARG CONSUL_TEMPLATE_VERSION=0.24.1
ADD "https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tgz" /

RUN tar zxfv "/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tgz"

ADD . /
RUN mkdir -p /root/html
ADD index.html /root/html

ENTRYPOINT [ "/entrypoint.sh" ]