#!/bin/bash
set -e
shopt -s failglob

mkdir deb-package
ar p  AutoFirma_1*.deb data.tar.gz | tar zxvf - -C deb-package
sed -i "s/ \/usr\// \/app\//" deb-package/usr/bin/autofirma

install -Dm755 deb-package/usr/bin/autofirma                                /app/bin/autofirma
install -Dm644 deb-package/usr/lib/AutoFirma/AutoFirma.jar                  /app/lib/AutoFirma/AutoFirma.jar
install -Dm644 deb-package/usr/lib/AutoFirma/AutoFirma.png                  /app/lib/AutoFirma/AutoFirma.png
install -Dm644 deb-package/usr/lib/AutoFirma/AutoFirmaConfigurador.jar      /app/lib/AutoFirma/AutoFirmaConfigurador.jar

mkdir -p /app/share/icons/hicolor/scalable/
install -Dm644 AutoFirma.svg                                                /app/share/icons/hicolor/scalable/com.github.aruiz.Autofirma.svg

mkdir -p /app/share/applications/
install -Dm644 com.github.aruiz.Autofirma.desktop                           /app/share/applications/com.github.aruiz.Autofirma.desktop
