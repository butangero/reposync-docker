FROM centos
RUN yum update -y
RUN yum install -y yum-utils

ENV REPO_FILE http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm

RUN yum clean all
ADD run.sh /run.sh
RUN chmod +x /run.sh

CMD ["./run.sh"]
