# configure hive
FROM gesiscss/binder-serhatcevikel-2dbdm-5f2019-5f2-1e05af:136a2b6b771949610f8b7e705fcc34c01f4afa97
LABEL maintainer="serhatcevikel@yahoo.com"

# Make sure the contents of our repo are in ${HOME}
COPY ./binder ${HOME}/binder

USER root

RUN apt update; \
    apt install -y \
    libgdal-dev; 

RUN \
    ## install R kernel for jupyter
    Rscript ${HOME}/binder/rpack.R && \
    rm -r ${HOME}/*;
 
USER ${NB_USER}
WORKDIR ${HOME}


