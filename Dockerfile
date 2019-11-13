FROM quay.io/jupyteronopenshift/s2i-minimal-notebook-py36:2.4.0

#RUN apt-get update && apt-get install -y curl
#RUN pip install pip
#geïnstalleerde packages
RUN pip install pip
RUN pip install pandas


# Clone the repo to your local environment
RUN git clone https://github.com/jupyterlab/jupyterlab-git.git
RUN cd jupyterlab-git
# Install JupyterLab
RUN pip install jupyterlab
# Install Javascript dependencies
RUN jlpm install
# Install the server extension in development mode
RUN pip install -e .[test]
RUN jupyter serverextension enable --py jupyterlab_git
# Link your development version of the extension with JupyterLab
RUN jupyter labextension link .

