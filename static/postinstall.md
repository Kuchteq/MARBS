Some things can't really be automated or the automation is on the way. 
Hence this list of recommended things to do after the install:
# Activate browser extensions and very helpful adjustments
## Firefox
- The script automatically installed recomended set of extensions. However, there is the requirenment to activate them manually within the browser. Navigate to the hamburger icon and the notifications take you to the page where you can actiave them.
- Import or set extension settings. Tridactyl, LibRedirect and DarkReader are best utilized when they have the optimal settings. MARBS provides a sane config for TRIDACTYL and to apply it, start a new tab and type `source --url marbs.kuchta.dev/browser`. For LibRedirect choose the best instances of the former or import settings from ~/.config/ff-settings/sites and for the latter, set manually to detect if a website already has a dark mode and make applying the dark mode based on system settings.
- Enable compact mode and declutter topbar. Navigate to hamburger button > More Tools > Customize toolbar, there in the bottom left corner select density to compact. Then check "Title Bar" option.
## Chromium
- Go to https://github.com/gorhill/uBlock/releases. Download appropriate release for chromium, unzip it and go to `chrome://extensions`, select developer mode, load unpacked and select that folder. 
- Match theme and declutter topbar. Go to `chrome://settings/appearance` click "Use GTK" and check "Use system title bar and borders.
# Increase text contrast in Arc theme
run `paru -S --fm lf arc-gtk-theme-git` Then naviage to arc-gtk-theme-git/PKGBUILD and add the following after pkgver 
`prepare() {
  cd "${srcdir}/${_pkgname}-${pkgver}"
  find common -name "*" -type f -exec sed -i 's/'5C616C'/'464952'/gI' {}  \;
}`
Adjust 464952 value according to your preference.
