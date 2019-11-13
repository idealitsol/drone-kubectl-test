FROM bitnami/kubectl:1.13

LABEL maintainer "Idealitsol <opensource@idealitsol.com>"

COPY init-kubectl kubectl /opt/idealitsol/bin/

USER root

ENV PATH="/opt/idealitsol/bin:$PATH"

ENTRYPOINT ["run"]

CMD ["--help"]