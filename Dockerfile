# dcos-cli-lixw
FROM centos:7
RUN yum -y install epel-release 
RUN yum -y install python-pip 
RUN pip install virtualenv
RUN mkdir /dcos && cd /dcos
WORKDIR /dcos
RUN curl -O https://downloads.dcos.io/dcos-cli/install.sh
#RUN chmod +x install.sh
#RUN echo yes > bash install.sh . http://36.110.129.52
COPY in.sh /dcos/in.sh
RUN bash in.sh
RUN source /dcos/bin/env-setup && dcos help
CMD ["tail -f tail -f /var/log/anaconda/syslog"]

