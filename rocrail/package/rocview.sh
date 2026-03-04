#!/bin/sh
if [ ! -e ~/rocrail ] ; then
	mkdir ~/rocrail
fi

if [ ! -e ~/rocrail/plan.xml ] ; then
	cp /usr/local/share/rocrail/default/plan.xml ~/rocrail
fi

if [ ! -e ~/rocrail/svg ] ; then
	ln -s /usr/local/share/rocrail/svg ~/rocrail/svg
fi

if [ ! -e ~/rocrail/images ] ; then
	ln -s /usr/local/share/rocrail/images ~/rocrail/images
fi

if [ ! -e ~/rocrail/decspecs ] ; then
	ln -s /usr/local/share/rocrail/decspecs ~/rocrail/decspecs
fi

if [ ! -e ~/rocrail/stylesheets ] ; then
	ln -s /usr/local/share/rocrail/stylesheets ~/rocrail/stylesheets
fi

cd ~/rocrail

/usr/local/bin/rocview -sp /var/rocrail -themespath /usr/local/share/rocrail $@

