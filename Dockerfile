FROM babim/alpinebase:3.9-x86

# environment
ENV SOFT1 wrk
ENV SOFT2 wrk2
ENV SOFT3 ab

# download option
RUN apk add --no-cache wget bash && cd / && wget --no-check-certificate https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/option.sh && \
    chmod 755 /option.sh

# install software 1
RUN wget --no-check-certificate -O - https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20benchmark%20install/${SOFT1}_install.sh | bash

# install wget tool
RUN apk add --no-cache wget

# install software 2
RUN wget --no-check-certificate -O - https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20benchmark%20install/${SOFT2}_install.sh | bash

# install wget tool
RUN apk add --no-cache wget

# install software 3
RUN wget --no-check-certificate -O - https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20benchmark%20install/${SOFT3}_install.sh | bash

# run
ENTRYPOINT ["/docker-entrypoint.sh"]

