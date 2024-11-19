iptables -N envoy-fw-accept
iptables -N envoy-fw-drop
iptables -I INPUT -j envoy-fw-accept
iptables -I INPUT -j envoy-fw-drop
iptables -I envoy-fw-accept -s 0.0.0.0/0 -j ACCEPT
iptables -A envoy-fw-drop -d 9901 -j REJECT