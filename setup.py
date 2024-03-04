import platform
import subprocess
from dataclasses import dataclass

sep = "---------------------------------------------------------"
header = f"""\033c\
 :::::::-.      ...         ...    :::::::..   .::::::. 
  ;;,   `';, .;;;;;;;.   .;;;;;;;. ;;;;``;;;; ;;;`    ` 
  `[[     [[,[[     \\[[,,[[     \\[[,[[[,/[[[' '[==/[[[[,
   $$,    $$$$$,     $$$$$$,     $$$$$$$$$c     '''    $
   888_,o8P'"888,_ _,88P"888,_ _,88P888b "88bo,88b    dP
   MMMMP"`    "YMMMMMP"   "YMMMMMP" MMMM   "W"  "YMmMY" 
 
 Doors are sturdier than windows.
{sep}"""


@dataclass
class Dependency:
    # shell, gui, extra
    group: str = ""

    # existence of a name implies distro support
    # yay
    name_arch: str = ""
    name_arch_arm: str = ""

    # apt
    name_debian: str = ""

    # dnf
    name_fedora: str = ""


Manifest = [
    Dependency(
        name_arch="acpi",
        name_arch_arm="acpi",
        group="gui",
    ),
    Dependency(
        name_arch="alacritty",
        name_arch_arm="alacritty",
        group="gui",
    ),
    Dependency(
        name_arch="arandr",
        name_arch_arm="arandr",
        group="gui",
    ),
    Dependency(
        name_arch="atool",
        name_arch_arm="atool",
        group="shell",
    ),
    Dependency(
        name_arch="awesome",
        name_arch_arm="awesome",
        group="gui",
    ),
    Dependency(
        name_arch="bat",
        name_arch_arm="bat",
        group="shell",
    ),
    Dependency(
        name_arch="beautiful-discord-git",
        group="extra",
    ),
    Dependency(
        name_arch="bluez",
        name_arch_arm="bluez",
        group="gui",
    ),
    Dependency(
        name_arch="btop",
        name_arch_arm="btop",
        group="shell",
    ),
    Dependency(
        name_arch="byobu",
        name_arch_arm="byobu",
        group="shell",
    ),
    Dependency(
        name_arch="caprine",
        group="extra",
    ),
    Dependency(
        name_arch="chromium",
        name_arch_arm="chromium",
        group="gui",
    ),
    Dependency(
        name_arch="coreutils",
        name_arch_arm="coreutils",
        group="shell",
    ),
    Dependency(
        name_arch="discord",
        group="extra",
    ),
    Dependency(
        name_arch="fd",
        name_arch_arm="fd",
        group="shell",
    ),
    Dependency(
        name_arch="ffmpegthumbnailer",
        name_arch_arm="ffmpegthumbnailer",
        group="gui",
    ),
    Dependency(
        name_arch="file",
        name_arch_arm="file",
        group="shell",
    ),
    Dependency(
        name_arch="firefox-developer-edition",
        name_arch_arm="firefox",
        group="gui",
    ),
    Dependency(
        name_arch="fzf",
        name_arch_arm="fzf",
        group="shell",
    ),
    Dependency(
        name_arch="glow",
        name_arch_arm="glow",
        group="shell",
    ),
    Dependency(
        name_arch="gimp",
        group="extra",
    ),
    Dependency(
        name_arch="maim",
        group="gui",
    ),
    Dependency(
        name_arch="man-db",
        name_arch_arm="man-db",
        group="shell",
    ),
    Dependency(
        name_arch="man-pages",
        name_arch_arm="man-pages",
        group="shell",
    ),
    Dependency(
        name_arch="mediainfo",
        name_arch_arm="mediainfo",
        group="shell",
    ),
    Dependency(
        name_arch="mosh",
        name_arch_arm="mosh",
        group="shell",
    ),
    Dependency(
        name_arch="neovim",
        name_arch_arm="neovim",
        group="shell",
    ),
    Dependency(
        name_arch="nnn",
        name_arch_arm="nnn",
        group="shell",
    ),
    Dependency(
        name_arch="noto-fonts",
        name_arch_arm="noto-fonts",
        group="gui",
    ),
    Dependency(
        name_arch="noto-fonts-cjk",
        name_arch_arm="noto-fonts-cjk",
        group="gui",
    ),
    Dependency(
        name_arch="noto-fonts-emoji",
        name_arch_arm="noto-fonts-emoji",
        group="gui",
    ),
    Dependency(
        name_arch="npm",
        name_arch_arm="npm",
        group="shell",
    ),
    Dependency(
        name_arch="nsxiv",
        name_arch_arm="nsxiv",
        group="gui",
    ),
    Dependency(
        name_arch="oh-my-zsh-git",
        name_arch_arm="oh-my-zsh-git",
        group="shell",
    ),
    Dependency(
        name_arch="otf-font-awesome",
        name_arch_arm="otf-font-awesome",
        group="gui",
    ),
    Dependency(
        name_arch="picom",
        name_arch_arm="picom",
        group="gui",
    ),
    Dependency(
        name_arch="playerctl",
        name_arch_arm="playerctl",
        group="gui",
    ),
    Dependency(
        name_arch="polkit-gnome",
        name_arch_arm="polkit-gnome",
        group="gui",
    ),
    Dependency(
        name_arch="python-pywal",
        name_arch_arm="python-pywal",
        group="shell",
    ),
    Dependency(
        name_arch="python-pywalfox",
        name_arch_arm="python-pywalfox",
        group="extra",
    ),
    Dependency(
        name_arch="pywal-discord-git",
        group="extra",
    ),
    Dependency(
        name_arch="rate-mirrors",
        name_arch_arm="rate-mirrors",
        group="shell",
    ),
    Dependency(
        name_arch="redshift",
        name_arch_arm="redshift",
        group="gui",
    ),
    Dependency(
        name_arch="ripgrep",
        name_arch_arm="ripgrep",
        group="shell",
    ),
    Dependency(
        name_arch="rsync",
        name_arch_arm="rsync",
        group="shell",
    ),
    Dependency(
        name_arch="rubygems",
        name_arch_arm="rubygems",
        group="shell",
    ),
    Dependency(
        name_arch="sl",
        name_arch_arm="sl",
        group="shell",
    ),
    Dependency(
        name_arch="spotify-launcher",
        group="extra",
    ),
    Dependency(
        name_arch="steam",
        group="extra",
    ),
    Dependency(
        name_arch="tar",
        name_arch_arm="tar",
        group="shell",
    ),
    Dependency(
        name_arch="telegram-desktop",
        name_arch_arm="telegram-desktop",
        group="extra",
    ),
    Dependency(
        name_arch="thunderbird",
        name_arch_arm="thunderbird",
        group="extra",
    ),
    Dependency(
        name_arch="tree",
        name_arch_arm="tree",
        group="shell",
    ),
    Dependency(
        name_arch="ttf-font-awesome",
        name_arch_arm="ttf-font-awesome",
        group="gui",
    ),
    Dependency(
        name_arch="unclutter",
        name_arch_arm="unclutter",
        group="gui",
    ),
    Dependency(
        name_arch="unrar",
        name_arch_arm="unrar",
        group="shell",
    ),
    Dependency(
        name_arch="unzip",
        name_arch_arm="unzip",
        group="shell",
    ),
    Dependency(
        name_arch="wal-telegram-git",
        group="extra",
    ),
    Dependency(
        name_arch="watchexec",
        name_arch_arm="watchexec",
        group="shell",
    ),
    Dependency(
        name_arch="w3m",
        name_arch_arm="w3m",
        group="shell",
    ),
    Dependency(
        name_arch="wget",
        name_arch_arm="wget",
        group="shell",
    ),
    Dependency(
        name_arch="xclip",
        name_arch_arm="xclip",
        group="gui",
    ),
    Dependency(
        name_arch="xorg-server",
        name_arch_arm="xorg-server",
        group="gui",
    ),
    Dependency(
        name_arch="xorg-xinit",
        name_arch_arm="xorg-xinit",
        group="gui",
    ),
    Dependency(
        name_arch="xorg-xrandr",
        name_arch_arm="xorg-xrandr",
        group="gui",
    ),
    Dependency(
        name_arch="zsh",
        name_arch_arm="zsh",
        group="shell",
    ),
]


def dump_manifest(Manifest):
    print("Manifest:")

    for dep in Manifest:
        print(
            f"""{sep}
      Names:
        Arch: {dep.name_arch}
        Arch ARM: {dep.name_arch_arm}
        Debian: {dep.name_debian}
        Fedora: {dep.name_fedora}

      Group: {dep.group}

      Support:
        Arch: {True if dep.name_arch else False}
        Arch Arm: {True if dep.name_arch_arm else False}
        Debian: {True if dep.name_debian else False}
        Fedora: {True if dep.name_fedora else False}
    """
        )


def dump_arch(Manifest):
    for data in Manifest:
        if data.name_arch:
            print(data.name_arch)


def dump_arch_arm(Manifest):
    for data in Manifest:
        if data.name_arch_arm:
            print(data.name_arch_arm)


def dump_shell(Manifest):
    print("Shell:")
    for data in Manifest:
        if data.group == "shell":
            print(data.name_arch)

    print(sep)


def dump_gui(Manifest):
    print("GUI:")
    for data in Manifest:
        if data.group == "gui":
            print(data.name_arch)

    print(sep)


def dump_extra(Manifest):
    print("Extra:")
    for data in Manifest:
        if data.group == "extra":
            print(data.name_arch)

    print(sep)


def adventure_input() -> int:
    response: str = input(
        f""" Choose your adventure:
{sep}
  1. Shell/CLI stuff only
  2. Above plus basic GUI
  3. Above plus extras like steam, messengers (bloat)
  4. Clean neovim data (only if you have problems or still have pre-2024 setup)
  
Enter number: """
    )
    try:
        input_int: int = int(response)
    except Exception:
        print("Invalid input. Input needs to be able to be parsed as an integer!")
        exit()

    if input_int in range(1, 5):
        return input_int
    else:
        print(f"Input out of range: {input_int}")
        exit()


def main():
    print(header)

    adventure = adventure_input()

    print(f"{sep}")

    # match statement is python >=3.10
    if adventure == 1:
        print("shell!")
    elif adventure == 2:
        print("basic gui!")
    elif adventure == 3:
        print("bloat!")
    elif adventure == 4:
        print("nvim clean!")
    else:
        print("error! this code should never run btw...")

    print(f"{sep}")

    # test for base deps: git, yay, etc
    # test for package manager


    # shell
    subprocess.run(f"python --version", shell=True, check=True)
    print(platform.freedesktop_os_release().get("NAME"))

    # -- debug stuff --
    # dump_manifest(Manifest)
    # dump_arch(Manifest)
    # dump_arch_arm(Manifest)
    # dump_shell(Manifest)
    # dump_gui(Manifest)
    # dump_extra(Manifest)

main()
