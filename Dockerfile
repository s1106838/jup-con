FROM quay.io/jupyteronopenshift/s2i-minimal-notebook-py36:2.4.0

RUN pip install pip
RUN pip install pandas


