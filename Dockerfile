FROM ubuntu

ENV PYTHONUNBUFFERED=1

RUN apt update && apt install git python3 python3-pip -y && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /
ADD hub-mirror /hub-mirror
ADD action.yml /

ENTRYPOINT ["/entrypoint.sh"]
