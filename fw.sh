# Flush existing rules and chains
sudo iptables -F
sudo iptables -X
sudo iptables -t nat -F
sudo iptables -t nat -X
sudo iptables -t mangle -F
sudo iptables -t mangle -X

# Set default policies to block incoming and forward traffic
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP

# Allow outgoing traffic by default
sudo iptables -P OUTPUT ACCEPT

# Allow incoming traffic on port 22 (SSH)
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Allow loopback (localhost) traffic
sudo iptables -A INPUT -i lo -j ACCEPT

# Allow established and related incoming traffic
sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Save the rules to make them persistent
sudo apt-get install -y iptables-persistent
sudo netfilter-persistent save
