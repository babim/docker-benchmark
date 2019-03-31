FROM babim/alpinebase:3.9-x86

ENV SOFT wrk2

# download option
RUN apk add --no-cache wget bash && cd / && wget --no-check-certificate https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/option.sh && \
    chmod 755 /option.sh

# install
RUN wget --no-check-certificate -O - https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20benchmark%20install/${SOFT}_install.sh | bash

# run
ENTRYPOINT ["/docker-entrypoint.sh"]

