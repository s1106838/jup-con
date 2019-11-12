FROM s2i-minimal-notebook:3.5

#RUN apt-get update && apt-get install -y curl
#RUN pip install pip
#geïnstalleerde packages
RUN pip install pandas
#RUN pip install jupyterhub-ldapauthenticator
#RUN pip install git+git://github.com/danielfrg/jupyterhub-kubernetes_spawner.git
#installeer git
#jupyter labextension install @jupyterlab/git
#pip install --upgrade jupyterlab-git
#jupyter serverextension enable --py jupyterlab_git

#kopieer de configuratie
#COPY jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py
