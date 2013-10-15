Rebel Gentoo Overlay
============

## Howto

#### A) Quick & Dirty

1. Run ```layman -o https://raw.github.com/X4/gentoo-rebel/master/layman.xml  -f -a gentoo-rebel```

#### B) Sane and Safe

1. Just run ```git clone https://gist.github.com/6989788.git /etc/layman/overlays/gentoo-rebel```
2. Update all repos by running: ```layman -S```
3. Now add ```layman -a gentoo-rebel```

#### C) The Old Way

1. Find the overlays section in ```/etc/layman/layman.cfg```
2. Add ```https://raw.github.com/X4/gentoo-rebel/master/layman.xml```
3. Update all repos by running: ```layman -S```
4. Now add ```layman -a gentoo-rebel```


#### Howto uninstall the Overlay?

1. First run ```layman -d gentoo-rebel```
2. For B) rm -Rf ```/etc/layman/overlays/gentoo-rebel```
3. For C) Find the overlays section in ```/etc/layman/layman.cfg```
  * Remove ```https://raw.github.com/X4/gentoo-rebel/master/layman.xml```
