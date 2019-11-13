FROM quay.io/jupyteronopenshift/s2i-minimal-notebook-py36:2.4.0

RUN pip install pip
RUN pip install pandas

#change to root
USER 0

# install dep
RUN rpm -Uvh https://rpm.nodesource.com/pub_4.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm
RUN yum install -y nodejs

RUN npm cache clean -f
RUN npm install -g n
RUN n stable

#test
RUN pip install --upgrade jupyterlab-git
#RUN jupyter lab build


RUN jupyter serverextension enable --py jupyterlab_git
# Link your development version of the extension with JupyterLab
#RUN jupyter labextension link .
