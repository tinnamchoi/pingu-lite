install: 
	cp pingu-lite.sh /usr/bin/pingu-lite
	chmod +x /usr/bin/pingu-lite
	sed -e "s@# Alias for pingu-lite@@g" -i.backup /etc/bash.bashrc
	sed -e "s@alias pingu=/usr/bin/pingu-lite@@g" -i /etc/bash.bashrc
	echo -e "\n# Alias for pingu-lite\nalias pingu=/usr/bin/pingu-lite\n" >> /etc/bash.bashrc
	echo -e "\033[0;32mpingu-lite installed. \nYou can now run it with pingu-lite or pingu. (You may need to restart your terminal)\033[0m"

uninstall:
	sed -e "s@# Alias for pingu-lite@@g" -i.backup /etc/bash.bashrc
	sed -e "s@alias pingu=/usr/bin/pingu-lite@@g" -i /etc/bash.bashrc
	rm /usr/bin/pingu-lite
	echo -e "\033[0;32mpingu-lite uninstalled\033[0m"