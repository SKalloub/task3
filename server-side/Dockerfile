FROM centos:7
RUN yum install -y httpd
RUN yum install -y createrepo
RUN yum install -y yum-utils
RUN yumdownloader httpd
RUN mkdir /var/www/html/custom-repo
RUN curl -o /var/www/html/custom-repo/httpd-2.4.6-99.el7.centos.1.x86_64.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/httpd-2.4.6-99.el7.centos.1.x86_64.rpm
RUN createrepo /var/www/html/custom-repo
RUN echo "Alias /custom-repo /var/www/html/custom-repo" >> /etc/httpd/conf/httpd.conf
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
