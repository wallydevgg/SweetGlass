look-and-feel: look-and-feel/*
	tar -cJf SweetGlass.tar.xz look-and-feel/* --transform="s/look-and-feel\///"

desktoptheme: desktoptheme/*
	tar -cJf SweetGlass-Plasma-Theme.tar.xz desktoptheme/* --transform="s/desktoptheme/SweetGlass/"

aurorae: aurorae/*
	tar -cJf SweetGlass-Aurorae.tar.xz aurorae/* --transform="s/aurorae/SweetGlass/"

colors: SweetGlass.colors
	tar -czf SweetGlass-Colors.tar.gz SweetGlass.colors

wallpaper: wallpaper/*
	tar -cJf SweetGlass-Wallpaper.tar.xz wallpaper/* --transform="s/wallpaper/SweetGlass/"

kvantum: kvantum/*
	tar -caf SweetGlass-kvantum.zip kvantum/* --transform="s/kvantum/SweetGlass/"

sddm: sddm/*
	tar -cJf SweetGlass-SDDM.tar.xz sddm/* --transform="s/sddm/SweetGlass/"

clean:
	rm -f *.zip *.tar.*