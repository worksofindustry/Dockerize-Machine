# Launch all services
RUN chmod 777 /etc/systemd/system/zookeeper.service
RUN chmod 777 /etc/systemd/system/kafka.service 
CMD ["bash","/etc/systemd/system/zookeeper.service"]
CMD ["bash","/etc/systemd/system/kafka.service"]


##Enable Traffic On Local Host
iptables -A INPUT -i lo -j ACCEPT
## Open necessary ports to external traffic
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 2181 -j ACCEPT
iptables -A INPUT -p tcp --dport 6443 -j ACCEPT
iptables -A INPUT -p tcp --dport 9091 -j ACCEPT
iptables -A INPUT -p tcp --dport 9092 -j ACCEPT
