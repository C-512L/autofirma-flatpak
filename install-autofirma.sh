#!/bin/bash
set -e
shopt -s failglob

mkdir deb-package
ar p  AutoFirma_*.deb data.tar.gz | tar zxvf - -C deb-package
sed -i "s/ \/usr\// \/app\//" deb-package/usr/bin/autofirma

install -Dm755 deb-package/usr/bin/autofirma                                /app/bin/autofirma
install -Dm644 deb-package/usr/lib/AutoFirma/AutoFirma.jar                  /app/lib/AutoFirma/AutoFirma.jar
install -Dm644 deb-package/usr/lib/AutoFirma/AutoFirmaConfigurador.jar      /app/lib/AutoFirma/AutoFirmaConfigurador.jar
install -Dm644 AutoFirma.svg                                                "/app/share/icons/hicolor/scalable/apps/afirma.svg"
install -Dm644 "afirma.desktop"                                             "/app/share/applications/afirma.desktop"
