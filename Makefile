start-vpn:
	docker-compose down
	docker-compose run vpn client.ovpn
restart-vpn:
	docker-compose down
	make start-vpn
