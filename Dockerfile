FROM quay.io/jupyteronopenshift/s2i-minimal-notebook-py36:2.4.0

RUN pip install pip
RUN pip install pandas
USER 0
RUN rpm -Uvh https://rpm.nodesource.com/pub_4.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm
RUN yum install nodejs
