#!/bin/sh

dotfilesrepo="https://github.com/kuchteq/wayrice.git"
progsfile="https://raw.githubusercontent.com/Kuchteq/MARBS/master/static/progs.csv"
aurhelper="paru"
repobranch="master"

echo -e "\033[31;1m [REQUIREMENTS]\033[0m You are meant to execute the MARBS installer as a regular user who is in the wheel group and only the commands installing packages are executed with root privilages. \033[1mIt is recommended you run it on a fresh new user as the installer may overwrite certain files\033[m. Continue [y/n]?"
read -r ans; [ "$ans" = "y" ] || exit 1

# Prechecks
if [ $(id -u) = 0 ]; then
        echo -e "\033[31;1m [ERROR]\033[0m You are currently a root user! Make a new user by running \033[34;1museradd -m -G wheel yournewusername\033[0m and then run the installer as that user."
        exit 1;
fi

if ! sudo true; then
        echo -e "\033[31;1m [ERROR]\033[0m Your user is not part of the wheel group or the sudoers file is misconfigured. Run the \033[34;1mgroups\033[0m command and check if it lists wheel as well as ensure that inside \033[35;1m/etc/sudoers\033[m the line allowing members of the wheel group to execute any command is uncommented."
        exit 1;
fi

# Allow user to run sudo without password. Since AUR programs must be installed
# in a fakeroot environment, this is required for all builds with AUR.
echo -e " \033[34;1m[INFO]\033[0m The installer will temporarily disable password authentication for sudo commands to not bother you with repeated privilege prompts. The /etc/sudoers.d/marbs-installer-temp that allows for that will be removed at the end of the installation.\033[0m"
trap 'rm -f /etc/sudoers.d/marbs-installer-temp' HUP INT QUIT TERM PWR EXIT
echo "%wheel ALL=(ALL) NOPASSWD: ALL
Defaults:%wheel,root runcwd=*" | sudo tee /etc/sudoers.d/marbs-installer-temp


if ! sudo pacman -Sy; then
        echo -e "\033[31;1m [ERROR]\033[0m Updating packages index failed. Are you sure you are connected to the internet?"
        exit 1;
fi

### FUNCTIONS ###

installpkg() {
	sudo pacman --noconfirm --needed -S "$1"
}

putgitrepo() {
	# Downloads a gitrepo $1 and places the files in $2 only overwriting conflicts
	echo -e " \033[34;1m[INFO]\033[0m Downloading and installing config files...\033[0m"
	[ -z "$3" ] && branch="master" || branch="$repobranch"
	dir=$(mktemp -d)
	[ ! -d "$2" ] && mkdir -p "$2"
        chown "$(whoami)":wheel "$dir" "$2"
	git -C "$repodir" clone --depth 1 \
		--single-branch --no-tags -q --recursive -b "$branch" \
		--recurse-submodules "$1" "$dir"
	cp -rfT "$dir" "$2"
}

aurhelperinstall() {
        git clone --depth 1 https://aur.archlinux.org/paru-bin.git --single-branch "$repodir/$aurhelper"
        makepkg -D "$repodir/$aurhelper" -sif --noconfirm
        rm -rf "$repodir/$aurhelper"
}

aurinstall() {
        echo -e " \033[34;1m[INFO]\033[0m Installing \`$1\` ($n of $total) from the \033[31;1mAUR\033[0m. $1 $2" 
	echo "$aurinstalled" | grep -q "^$1$" && return 1
	$aurhelper -S --noconfirm "$1" 
}
regularinstall() {
	# Installs all needed programs from main repo.
	echo -e " \033[34;1m[INFO]\033[0m Installing \`$1\` ($n of $total). $1 $2"
	installpkg "$1"
}

srcinstall() {
	# Installs $1 manually. Used for custom user programs
	# Should be run after repodir is created and var is set.
        reponame=$(echo "$1" | grep -oE '[^/]+$' | cut -d'.' -f1)
        reposource=$1

	echo -e " \033[34;1m[INFO]\033[0m Installing \"$1\" manually." 
	git -C "$repodir" clone --depth 1 --single-branch \
		--no-tags -q "$reposource" "$repodir/$reponame" 
	makepkg -D "$repodir/$reponame" -sif --noconfirm || return 1
}

installationloop() {
	([ -f "$progsfile" ] && cp "$progsfile" /tmp/progs.csv) ||
		curl -Ls "$progsfile" | sed '/^#/d' >/tmp/progs.csv
	total=$(wc -l </tmp/progs.csv)
	aurinstalled=$(pacman -Qqm)
	while IFS=, read -r tag program comment; do
		n=$((n + 1))
		echo "$comment" | grep -q "^\".*\"$" &&
			comment="$(echo "$comment" | sed -E "s/(^\"|\"$)//g")"
		case "$tag" in
		"A") aurinstall "$program" "$comment" ;;
		"S") srcinstall "$program" "$comment" ;;
		*) regularinstall "$program" "$comment" ;;
		esac
	done </tmp/progs.csv
}

installdefaultwallpapers() {
	wallpaperspath="$HOME/.local/share/wallpapers"
	mkdir -p "$wallpaperspath"
	curl -Ls "https://marbs.kuchta.dev/wallpapers/wallpaper_dark.jpg" > "$wallpaperspath/wallpaper_dark.jpg"
	curl -Ls "https://marbs.kuchta.dev/wallpapers/wallpaper_light.jpg" > "$wallpaperspath/wallpaper_light.jpg"
	curl -Ls "https://marbs.kuchta.dev/wallpapers/lock_wallpaper_light.jpg" > "$wallpaperspath/lock_wallpaper_light.jpg"
	curl -Ls "https://marbs.kuchta.dev/wallpapers/lock_wallpaper_dark.jpg" > "$wallpaperspath/lock_wallpaper_dark.jpg"
}

browsersetup(){
        browserdir="$HOME/.mozilla/firefox"
        profilesini="$browserdir/profiles.ini"

        # Start firefox headless so it generates a profile. Then get that profile in a variable.
        firefox --headless &
        sleep 2
        profile="$(sed -n "/Default=.*.default-\(default\|release\)/ s/.*=//p" "$profilesini")"
        pdir="$browserdir/$profile"

	addonlist="ublock-origin localcdn-fork-of-decentraleyes istilldontcareaboutcookies libredirect darkreader"
	addontmp="$(mktemp -d)"
	trap "rm -fr $addontmp" HUP INT QUIT TERM PWR EXIT
	IFS=' '
	mkdir -p "$pdir/extensions/"
	for addon in $addonlist; do
		addonurl="$(curl --silent "https://addons.mozilla.org/en-US/firefox/addon/${addon}/" | grep -o 'https://addons.mozilla.org/firefox/downloads/file/[^"]*')"
		file="${addonurl##*/}"
		curl -LOs "$addonurl" > "$addontmp/$file"
		id="$(unzip -p "$file" manifest.json | grep "\"id\"")"
		id="${id%\"*}"
		id="${id##*\"}"
		mv "$file" "$pdir/extensions/$id.xpi"
	done
}


for x in curl ca-certificates base-devel git ntp; do
	echo -e " \033[34;1m[INFO]\033[0m Installing \`$x\` which is required to install and configure other programs."
	installpkg "$x"
done

[ -z "${HOME}" ] && HOME="/home/$(whoami)"
cd "$HOME" || exit

putgitrepo "$dotfilesrepo" "$HOME" "$repobranch"
rm -rf "README.md" "LICENSE" "FUNDING.yml"

export GNUPGHOME="$HOME/.local/share/gnupg"
mkdir -m 0600 -p "$GNUPGHOME"


mkdir -p ".cache/zsh/" \
        ".config/abook/" \
        ".local/share/captures" \
        ".local/share/captures/rec" \
        "atm" \
        "doc" \
        "edu" \
        "inc" \
        "med" \
        "med/movies" \
        "med/music" \
        "med/pics" \
        "med/series" \
        "src"

installdefaultwallpapers

# Installing things and changing root stuff. 

# Make pacman colorful, concurrent downloads and Pacman eye-candy.
grep -q "ILoveCandy" /etc/pacman.conf || sudo sed -i "/#VerbosePkgLists/a ILoveCandy" /etc/pacman.conf
sudo sed -Ei "s/^#(ParallelDownloads).*/\1 = 5/;/^#Color$/s/#//" /etc/pacman.conf

# Use all cores for compilation.
sudo sed -i "s/-j2/-j$(nproc)/;/^#MAKEFLAGS/s/^#//" /etc/makepkg.conf

# Speed up installing aur at a cost of higher disk usage
sudo sed -i "s/COMPRESSZST=(zstd -c -T0 --ultra -20 -)/COMPRESSZST=(zstd -c -T0 --fast -)/" /etc/makepkg.conf

repodir="$HOME/.local/src"
mkdir -p "$repodir"

aurhelperinstall

installationloop | tee -a marbs-install.log

browsersetup

# Kill the now unnecessary librewolf instance.
pkill firefox

sudi ln -s "$HOME/.config/keyd/default.conf /etc/keyd/default.conf"

echo "Defaults editor=/usr/bin/nvim" | sudo tee /etc/sudoers.d/01-marbs-visudo-editor

# Make zsh the default shell for the user and set up folders which the system would usually expect.
chsh -s /bin/zsh "$(whoami)" 

# Clean up
rm -f /etc/sudoers.d/marbs-installer-temp
echo -e " \033[34;1m[INFO]\033[0m Cleaning up the /etc/sudoers.d/marbs-installer-temp.\033[0m"

echo -e "\x1b[32;1m[FINISHED]\x1b[m MARBS installation is done, \x1b[1mplease log out and log in again\x1b[m for the changes to take place"
