#!/bin/sh

source /etc/updatecert/updatecert.ini

if [ "$PUREFTPD" -eq "1" ]; then

  echo "check let's encrypt pureftpd"

  FTPSTOP="/etc/init.d/pure-ftpd stop";
  FTPSTART="/etc/init.d/pure-ftpd start";
  PATHLETSENCRYPT="/etc/letsencrypt/live/";

  cat $PATHLETSENCRYPT/$SERVER/cert.pem > $PATHLETSENCRYPT/$SERVER/pure-ftpd.pem
  cat $PATHLETSENCRYPT/$SERVER/privkey.pem >> $PATHLETSENCRYPT/$SERVER/pure-ftpd.pem

  sh $FTPSTOP
  sh $FTPSTART

fi

if [ "$POSTFIX" -eq "1" ]; then

  echo "check let's encrypt postfix"

  /etc/init.d/postfix reload

fi


if [ "$DOVECOT" -eq "1" ]; then

  echo "check let's encrypt dovecot"

  /etc/init.d/dovecot reload

fi

if [ "$COURIERIMAP" -eq "1" ]; then

  echo "check let's encrypt courierimap"

  cat $PATHLETSENCRYPT/$SERVER/cert.pem > $PATHLETSENCRYPT/$SERVER/courier.pem
  cat $PATHLETSENCRYPT/$SERVER/privkey.pem >> $PATHLETSENCRYPT/$SERVER/courier.pem

  /etc/init.d/courier-imap reload
  /etc/init.d/courier-authlib reload

fi
