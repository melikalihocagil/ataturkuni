#!/bin/bash

function kur() {
        sudo apt update
        sudo apt install -y liman
}

function kaldir() {
        sudo apt-get remove --purge -y liman
        sudo apt-get autoremove -y
        sudo apt-get clean
}

function parola_sifirla() {
        sudo passwd $USER
}

if [ "$1" == "kur" ]; then
        kur
elif [ "$1" == "kaldir" ]; then
        kaldir
elif [ "$1" == "sifirla" ]; then
        parola_sifirla
else
        echo "kurulum icin ./proje.sh kur"
        echo "kaldirmak icin ./proje.sh kaldir"
        echo "parola sifirlama icin ./proje.sh sifirla"
        echo "parametreleriyle cagiriniz..."
        exit 1
fi

