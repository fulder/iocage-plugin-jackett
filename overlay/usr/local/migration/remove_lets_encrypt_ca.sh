#!/bin/bash

echo "Patching CA certs, removing expired Let's Encrypt cert"
ca_file=/usr/local/share/certs/ca-root-nss.crt

i=0
cert_line=0

while IFS= read -r line
do
  i=$((i+1))

  if [ "$line" = "Certificate:" ]
  then
    cert_line=$i
  fi

  if [ "$line" = "Ob8VZRzI9neWagqNdwvYkQsEjgfbKbYK7p2CNTUQ" ]
  then
    end_line=$((i+1))  # Last PEM bytes, row below this one is the -----END CERTIFICATE-----
    break
  fi
done < ${ca_file}

if [ $cert_line -ne 0 ]
then
  sed -i '' "${cert_line},${end_line}d" "${ca_file}"
fi

echo "CA cert patch complete"