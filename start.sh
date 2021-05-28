#!/bin/sh

echo 'extension=pdo.so' > php.ini
for Module in $( ls lib/* )
do
	echo "extension=$Module" >> php.ini
done

LD_LIBRARY_PATH=lib lib/ld-linux-x86-64.so.2 ./php -c php.ini$@