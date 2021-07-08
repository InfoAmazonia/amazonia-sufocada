FROM continuumio/anaconda3:2020.11

SHELL ["/bin/bash", "--login", "-c"]

COPY src /home/amazonia-sufocada

RUN chmod +x /home/amazonia-sufocada/*.sh

RUN conda env create --file /home/amazonia-sufocada/environment.yml

RUN conda install -c conda-forge tippecanoe

ADD compose/tweet-cronjob /etc/cron.d/tweet-cronjob

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/tweet-cronjob

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

#Install Cron
RUN apt-get update
RUN apt-get -y install cron

