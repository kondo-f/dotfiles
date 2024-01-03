
# WSL Tools

## Install Font

```shell
bash isntall_font.sh
```

## Install PyCharm

```shell
bash install_pycharm.sh
```

## Edit profile

Add `~/.profile` or `~/.zprofile`

```shell
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export DefaultIMModule=fcitx
if [ $SHLVL = 1 ] ; then
  (fcitx-autostart > /dev/null 2>&1 &)
  xset -r 49  > /dev/null 2>&1
fi
```

## Setting fcitx

fcitx-config-gtk3
