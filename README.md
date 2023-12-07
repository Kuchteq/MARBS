# Mariusz's Auto-Rice Bootstrapping Scripts (MARBS)

## Installation:

On an Arch-based distribution as root, run the following:

```
curl -LO marbs.kuchta.dev/marbs.sh
sh marbs.sh
```

That's it.

## What is MARBS?

MARBS is a script that autoinstalls and autoconfigures a fully-functioning
and minimal terminal-and-vim-based Arch Linux environment.

MARBS can be run on a fresh install of Arch or Artix Linux, and provides you
with a fully configured diving-board for work or more customization.

## Why MARBS
- Modern - uses Wayland and the native apps made for it.
- Tight tool integration and seamlessness. MARBS calls itself a meta-desktop environment due to how various programs integrate with each other. From the way the LF file manager is baked into nvim to having that same LF as an actual file picker/saver within your browser and apps that support (xdg-desktop-portals).There are many of those integrations throughout the environment.
- Dynamic dark/light mode toggle for the apps that support it.
- Help getting started with documentation and tutorial videos at [marbs.kuchta.dev](https://marbs.kuchta.dev)

## Customization

By default, MARBS uses the programs [here in progs.csv](static/progs.csv) and installs
[my dotfiles repo (voidrice) here](https://github.com/kuchteq/wayrice),
but you can easily change this by either modifying the default variables at the
beginning of the script or giving the script one of these options:

- `-r`: custom dotfiles repository (URL)
- `-p`: custom programs list/dependencies (local file or URL)
- `-a`: a custom AUR helper (must be able to install with `-S` unless you
  change the relevant line in the script

### The `progs.csv` list

MARBS will parse the given programs list and install all given programs. Note
that the programs file must be a three column `.csv`.

The first column is a "tag" that determines how the program is installed, ""
(blank) for the main repository, `A` for via the AUR or `G` if the program is a
git repository that is meant to be `make && sudo make install`ed.

The second column is the name of the program in the repository, or the link to
the git repository, and the third column is a description (should be a verb
phrase) that describes the program. During installation, MARBS will print out
this information in a grammatical sentence. It also doubles as documentation
for people who read the CSV and want to install my dotfiles manually.

Depending on your own build, you may want to tactically order the programs in
your programs file. MARBS will install from the top to the bottom.

If you include commas in your program descriptions, be sure to include double
quotes around the whole description to ensure correct parsing.

### The script itself

The script is extensively divided into functions for easier readability and
trouble-shooting. Most everything should be self-explanatory.

The main work is done by the `installationloop` function, which iterates
through the programs file and determines based on the tag of each program,
which commands to run to install it. You can easily add new methods of
installations and tags as well.

Note that programs from the AUR can only be built by a non-root user. What
MARBS does to bypass this by default is to temporarily allow the newly created
user to use `sudo` without a password (so the user won't be prompted for a
password multiple times in installation). This is done ad-hocly, but
effectively with the `newperms` function. At the end of installation,
`newperms` removes those settings, giving the user the ability to run only
several basic sudo commands without a password (`shutdown`, `reboot`,
`pacman -Syu`).
