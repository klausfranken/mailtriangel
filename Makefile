checkin:
	svn commit -m ''

status:
	svn stat

clean:
	rm -f mailtriangel.log*
	rm -f store/*
	svn revert log4perl.cfg

tgz:	clean
	mkdir /tmp/mailtriangel
	mkdir /tmp/mailtriangel/stat/
	cp -av README mailtriangel log4perl.cfg mail_template.txt /tmp/mailtriangel/
	cd /tmp && tar cvzf mailtriangel.tgz mailtriangel
	mv /tmp/mailtriangel.tgz .
	rm -rf /tmp/mailtriangel
	
