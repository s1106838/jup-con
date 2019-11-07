# use a node base image
FROM getwarped/s2i-minimal-notebook

# set maintainer
LABEL maintainer "bas"

RUN pip install --upgrade pip && 
    pip install pandas
