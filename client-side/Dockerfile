FROM centos:7
RUN repotrack -p http://localhost:8899/custom-repo/ httpd
RUN yum install -y httpd
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
