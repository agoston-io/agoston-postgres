# agostops/agoston-postgres:v15
FROM postgres:15.4
RUN apt update
RUN apt install -y python3 python3-pip postgresql-plpython3-15
RUN apt install python3-requests

