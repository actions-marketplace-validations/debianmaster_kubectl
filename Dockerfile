FROM bitnami/kubectl:latest
LABEL maintainer "Chakradhar Rao Jonagam" 
USER root
RUN wget https://github.com/kudobuilder/kuttl/releases/download/v0.1.0/kubectl-kuttl_0.1.0_linux_x86_64 \
    && mv kubectl-kuttl_0.1.0_linux_x86_64 /usr/local/bin/kubectl-kuttl \
    && chmod +x /usr/local/bin/kubectl-kuttl
