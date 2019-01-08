ansible webservers  -m shell -a 'echo hello'
ansible webservers  -m shell -a 'cat /etc/os*'
ansible mainframes -m shell -a "ping -c 1 8.8.8.8"
