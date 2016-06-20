# dcos-cli-lixw
FROM centos:7
RUN yum -y install epel-release && yum -y install python-pip && pip install virtualenv
RUN mkdir /dcos && cd /dcos
WORKDIR /dcos
RUN curl -O https://downloads.dcos.io/dcos-cli/install.sh
RUN bash install.sh . http://36.110.129.52
RUN source /dcos/bin/env-setup && dcos help
CMD ["/bin/bash"]

