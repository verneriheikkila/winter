#!/bin/bash

# Määritä jouluun liittyvät päivämäärät
joulukuun_numero=12
joulun_paiva=24

# Hae tämänhetkinen päivämäärä
nykyinen_kuukausi=$(date +%m)
nykyinen_paiva=$(date +%d)

# Laske päivät jouluun
if [ $nykyinen_kuukausi -eq $joulukuun_numero -a $nykyinen_paiva -lt $joulun_paiva ]; then
    paivat_jouluun=$((joulun_paiva - nykyinen_paiva))
else
    # Joulu on kulunut tänä vuonna, joten lasketaan päivät ensi vuoden jouluun
    paivat_jouluun=$(( ( (12 - nykyinen_kuukausi - 1) * 30 ) + (30 - nykyinen_paiva) + joulun_paiva ))
fi

# Tulosta tulos
echo "Jouluun on $paivat_jouluun päivää!"
