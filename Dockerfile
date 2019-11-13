FROM bitnami/kubectl:1.13

LABEL maintainer "Idealitsol <opensource@idealitsol.com>"

COPY init-kubectl kubectl /opt/idealitsol/kubectl/bin/

USER root

ENV PATH="/opt/idealitsol/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]