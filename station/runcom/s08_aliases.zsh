##############################################################################
#
#    dppereyra's personal zsh config
#
#    zsh aliases
#
##############################################################################

echo "Loading aliases ..."

alias mystation="git --git-dir=$HOME/.station --work-tree=$HOME"
alias mystation-tui="lazygit --git-dir=$HOME/.station --work-tree=$HOME"

alias vi="nvim"

alias asdf-la="asdf list all"
alias asdf-pa="asdf plugin add"

alias show="pygmentize -f terminal256 -g -P style=paraiso-dark";

alias aria2c='aria2c -x 10 -s 10'
alias wget="wget -c"

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias ls='ls -G --color=auto'
alias la='ls -AG --color=auto'
alias ll='ls -AGlh --color=auto'
alias lr='ls -AGlhr --color=auto'
alias lh="ls -AG --color=auto | egrep '^\.'"

alias pacman='sudo pacman --color auto'
alias pac-recent="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -100"
alias pac-cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias pac-unlock="sudo rm /var/lib/pacman/db.lck"
alias yayskip='yay -S --mflags --skipinteg'

alias fc='sudo fc-cache -fv'

alias df='df -h'
alias free="free -mt"

alias ps="ps aeuxf"
alias psgrep="ps aeux | grep -v grep | grep -i -e VSZ -e"

alias hw="hwinfo --short"
alias cpu-security-check='grep . /sys/devices/system/cpu/vulnerabilities/*'

alias kill-conky='killall conky'

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

alias userlist="cut -d: -f1 /etc/passwd"

alias merge="xrdb -merge ~/.Xresources"

alias fixpng="find . -type f -name \"*.png\" -exec convert {} -strip {} \;"

alias skel='cp -rf /etc/skel/* ~'
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'
