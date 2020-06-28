FROM debian:testing-slim

ENV LANG C.UTF-8

# RUN locale-gen en_US.UTF-8
# ENV LANG en_US.UTF-8
# ENV LANGUAGE en_US:en
# ENV LC_ALL en_US.UTF-8
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y locales
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
 && sed -i -e 's/# pt_BR.UTF-8 UTF-8/pt_BR.UTF-8 UTF-8/' /etc/locale.gen \
 && locale-gen
# Install requirements for add-on
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y python3-pip \
    && apt-get autoremove && apt-get clean && rm -fR /var/lib/apt/lists



RUN pip install xbox-smartglass-core==1.2.2

COPY run.sh /
RUN chmod a+x /run.sh
RUN mkdir /config

CMD [ "/run.sh" ]
