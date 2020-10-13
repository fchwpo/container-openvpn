# container-openvpn
I have contarized openvpn for you (used openvpn 2.3.10 due to old server certificate)

### Why ?
For using old openvpn certificates without worrying about updating to latest os or change in dependencies

### How ?
Create auth.txt file with first line as username and second as password

Now just run following

### ONETIME PROCESS:
  ```
  docker-compose build
  ```
### TO RUN OPENVPN:
  ```
  sudo docker-compose run vpn client.ovpn
  ```
  
  Where client.ovpn is your openvpn config file

It restart always in case of error
