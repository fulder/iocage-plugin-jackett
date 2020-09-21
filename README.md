Iocage [jackett](https://github.com/Jackett/Jackett) plugin for freenas. 


# Testing manually

In freenas shell run:

* `fetch https://raw.githubusercontent.com/fulder/iocage-plugin-index/master/jackett.json`
* `iocage fetch -P jackett.json --name jackett dhcp=on`