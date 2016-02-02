#!/bin/bash

ORA_DEB="oracle-xe_11.2.0-1.0_amd64.deb"

#
# download the Oracle installer
#
downloadOracle () {

  local url="https://github.com/MaksymBilenko/docker-oracle-xe-11g"

  local ora_deb_partial=( 
    ${ORA_DEB}aa 
    ${ORA_DEB}ab 
    ${ORA_DEB}ac
  )

  local i=1
  for part in "${ora_deb_partial[@]}"; do     
    echo "[Downloading '$part' (part $i/3)]"
    curl -s --retry 3 -m 60 -o /$part -L $url/blob/master/$part?raw=true
    i=$((i + 1))

  done

  cat /${ORA_DEB}a* > /${ORA_DEB}

  rm -f /${ORA_DEB}a*

}

downloadOracle