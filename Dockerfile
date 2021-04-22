FROM centos:7

RUN yum install sudo -y
RUN yum install wget -y
RUN yum install java-11-openjdk.x86_64 -y
RUN sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install jenkins -y
RUN yum install net-tools -y
RUN yum install initscripts.x86_64 -y
CMD ["java","-jar","/usr/lib/jenkins/jenkins.war"] 
