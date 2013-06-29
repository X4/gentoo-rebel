gentoo-rebel
============

Rebel Gentoo Overlay

## Howto

#### A) Quick & Dirty

1. Run ```layman -o https://raw.github.com/X4/gentoo-rebel/master/layman.xml  -f -a gentoo-rebel```

#### B) Sane and Standard

1. Find the overlays section in ```/etc/layman/layman.cfg```
2. Add ``` https://raw.github.com/X4/gentoo-rebel/master/layman.xml```
3. Run ```layman -a gentoo-rebel```

You can update the repo easily by running: ```layman -S```
