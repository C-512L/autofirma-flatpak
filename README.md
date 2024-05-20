# A Flatpak package of AutoFirma

## How to Install
```
flatpak run org.flatpak.Builder --disable-rofiles-fuse buildir es.gob.firmaelectronica.Autofirma.yaml --force-clean --install --user
```
## What Works
- Detects firefox flatpak's profiles
- Signing using local and firefox-installed certificates

## What doesn't work
- External `afirma://` URLs: Appears to be that the original deb/rpm package executes a .jar that does some obscure things. Source code of installer is here[<sup>1</sup>] and here[<sup>2</sup>]. Needs work

[<sup>1</sup>]:https://github.com/ctt-gob-es/clienteafirma/tree/master/afirma-simple-installer
[<sup>2</sup>]:https://github.com/ctt-gob-es/clienteafirma/tree/master/afirma-ui-simple-configurator
