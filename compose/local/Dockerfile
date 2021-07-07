FROM continuumio/anaconda3:2020.11

SHELL ["/bin/bash", "--login", "-c"]

COPY src /home/amazonia-sufocada

RUN chmod +x /home/amazonia-sufocada/*.sh

RUN conda env create --file /home/amazonia-sufocada/environment.yml

RUN conda install -c conda-forge tippecanoe

COPY /compose/local/entrypoint.sh /entrypoint.sh

RUN /home/amazonia-sufocada/setup.sh
ENTRYPOINT ["/entrypoint.sh"]