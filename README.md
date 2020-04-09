Iocage [jackett](https://github.com/Jackett/Jackett) plugin for freenas. 


# Testing manually

In freenas shell run:

* `fetch https://raw.githubusercontent.com/fulder/iocage-plugin-index/master/jackett.json`
* `iocage fetch -P jackett.json --name jackett ip4_addr="<INTERFACE>|<IP>/<MASK>" vnet=off`

where `<INTERFACE>` is the name of the ethernet interface and `<IP>/<MASK>` is a static IP address in local network range
 