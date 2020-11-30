#!/bin/sh
set -e

if [ -s vault_passphrase ] ; then
 cat vault_passphrase
else
 gpg2 --use-agent --output vault_passphrase --decrypt vault_passphrase.gpg 2> /dev/null
 PASS=$(cat vault_passphrase)
 rm vault_passphrase
 echo $PASS
fi

