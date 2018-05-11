#!/bin/bash
rm -rf /etc/yum.repos.d/*
echo "[rhel7]
name=redhat7
baseurl= ftp://192.168.4.254/rhel7
gpgcheck=0
enabled=1" >/etc/yum.repos.d/dvd.repo 
yum repolist | tail -1
yum -y install vsftpd >/dev/null
systemctl restart vsftpd
systemctl enable vsftpd

