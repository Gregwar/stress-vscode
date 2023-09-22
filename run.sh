#!/bin/bash

if [ -f symfony ]; then
    wget https://github.com/symfony-cli/symfony-cli/releases/latest/download/symfony-cli_linux_amd64.tar.gz -O sf.tgz
    tar zxvf sf.tgz
fi

if [ -f composer.phar ]; then
    wget https://getcomposer.org/composer.phar
fi

php composer.phar install
./symfony serve

