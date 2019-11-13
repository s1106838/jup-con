FROM quay.io/jupyteronopenshift/s2i-minimal-notebook-py36:2.4.0

#RUN apt-get update && apt-get install -y curl
#RUN pip install pip
#geïnstalleerde packages
RUN pip install pip
RUN pip install pandas

# Install the Repository
RUN rpm -Uvh https://rpm.nodesource.com/pub_5.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm

# Install Node.js
RUN yum install nodejs
#RUN jupyter labextension install @jupyterlab/github

