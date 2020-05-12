FROM bitnami/kubectl:latest
LABEL maintainer "Chakradhar Rao Jonagam"
LABEL version="1.0.0"
LABEL name="debianmaster/kubectl"
LABEL repository="http://github.com/debianmaster/kubectl"
LABEL homepage="http://github.com/debianmaster/kubectl"
LABEL com.github.actions.name="Kubernetes CLI - kubectl"
LABEL com.github.actions.description="Runs kubectl. The config can be provided with the secret KUBE_CONFIG_DATA."
LABEL com.github.actions.icon="terminal"
LABEL com.github.actions.color="blue"

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

#USER root
#RUN wget https://github.com/kudobuilder/kuttl/releases/download/v0.1.0/kubectl-kuttl_0.1.0_linux_x86_64 \
    #&& mv kubectl-kuttl_0.1.0_linux_x86_64 /usr/local/bin/kubectl-kuttl \
    #&& chmod +x /usr/local/bin/kubectl-kuttl
#USER 1000
