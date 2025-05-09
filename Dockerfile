FROM debian:latest
LABEL version="0.1"
MAINTAINER veto<veto@myridia.com>
WORKDIR /root

RUN apt-get update  && apt-get install -y \
curl \
emacs-nox   \
wget   \
apt-utils   \
openssh-server   \
supervisor   \
mariadb-client   \
libjson-webtoken-perl   \
libauthen-ntlm-perl  \
libcgi-pm-perl   \
libcrypt-openssl-rsa-perl   \
libdata-uniqid-perl   \
libfile-copy-recursive-perl   \
libio-socket-ssl-perl   \
libio-tee-perl   \
libhtml-parser-perl   \
libjson-webtoken-perl   \
libmail-imapclient-perl   \
libparse-recdescent-perl   \
libmodule-scandeps-perl   \
libreadonly-perl  \
libsys-meminfo-perl   \
libterm-readkey-perl   \
libtest-mockobject-perl   \
libtest-pod-perl   \
libunicode-string-perl \
libencode-imaputf7-perl \
libregexp-common-perl \
libfile-tail-perl \ 
liburi-perl    libwww-perl 

RUN wget -N https://imapsync.lamiral.info/dist/imapsync
RUN cp imapsync /usr/bin/  
RUN chmod +x /usr/bin/imapsync
    


ENTRYPOINT ["imapsync"]

