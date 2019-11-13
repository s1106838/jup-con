FROM quay.io/jupyteronopenshift/s2i-minimal-notebook-py36:2.4.0

#RUN apt-get update && apt-get install -y curl
#RUN pip install pip
#geïnstalleerde packages
RUN pip install pip
RUN pip install pandas


RUN jupyter labextension install @jupyterlab/github

