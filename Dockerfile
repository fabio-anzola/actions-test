FROM alpine
USER root
WORKDIR /

RUN mkdir /scripts
RUN printf '#!/bin/sh\necho "test"' >> /scripts/test.sh
RUN chmod +x /scripts/test.sh
ENTRYPOINT [ "/bin/sh", "/scripts/test.sh" ]
