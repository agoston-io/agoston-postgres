FROM postgres:16.2
RUN apt update
RUN apt install -y python3 python3-pip postgresql-plpython3-16
RUN apt install -y python3-requests

