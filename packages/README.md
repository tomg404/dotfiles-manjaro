## How to install a package
```shell
cd <package>

# install the AUR packages first if there are AUR packages (check README)
yay --aur -S -asdeps pkg1 pkg2 . . .

# install the main package
makepkg -si --clean
```
