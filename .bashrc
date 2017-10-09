#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

archey

export EDITOR="vim"
alias ls='ls --color=auto'
alias l='ls'
alias la='l -a'
alias lsd='ls -d */'
PS1='[\u@\h \W]\$ '
complete -cf sudo 
complete -cf man

#Source/reset .bashrc
alias sbr="source ~/.bashrc && clear"

#Source/reset .vimrc
alias svr="source ~/.vimrc"

# Vim shortcut
alias v="vim"

#Edit .bashrc, .vimrc
alias vbs="v ~/.bashrc"
alias vvs="v ~/.vimrc"

#Alsamixer shortcut
alias am="alsamixer"

#Shutdown
alias st="shutdown -h now"
alias rb="reboot"

#file size in MB or GB
alias dh="du -h"

#Git shortcuts
alias gt="git status"
alias gm="git commit"
alias gp="git push"
alias ga="git add"

#cd shortcuts
alias b="cd ../"

#C++ compile shortcut
alias clg="clang++ -Wall -pedantic --std=c++1y"

#Shortcut to get to thesis/defense
alias pt="cd ~/phd/thesis/"
alias pd="cd ~/phd/defense/"
alias ptc="cd ~/phd/thesis/chapters/"
alias t="pt && v thesis.tex"
alias i="ptc && v intro.tex"
alias o="ptc && v chapter1.tex"
alias tw="ptc && v chapter2.tex"
alias th="ptc && v chapter3.tex"
alias fr="ptc && v chapter4.tex"
alias co="ptc && v conclusions.tex"
alias d="pd && v defense.tex"
alias ab="ptc && v abstract.tex"

#Tea timer
alias tea="./.tea.sh"

#pacman and friends
alias p="pacman"

#yaourt and friends
alias y="yaourt"
alias yu="yaourt -Syu"

#Clear!
alias c="clear"

#Exeunt
alias e="exit"

#Archey and friends
alias a="c && archey"

#MPD/ncmcpp shortcut
alias m="mpd && ncmpcpp"
alias n='ncmpcpp'

#Change xterm colors
alias x="xterm -fa 'Platino Linotype' -fs 12 -fg white -bg black &"

#Test connection
alias pcd="ping -c 3 www.duckduckgo.com"

#Lynx to ddg
alias ldg="lynx https://duckduckgo.com"

alias yv="youtube-viewer"
alias ya="cd ~/Music/ && ytdl -a"
alias cda="cd ~/.config/awesome/"
alias bat="cat /sys/class/power_supply/BAT1/capacity"

#Teaching directory shortcuts
alias cdrc="cd ~/teaching/rcc/"
alias cdmv="cd ~/teaching/mvc/"
alias cduc="cd ~/teaching/ucr/"

#Workspace directory shortcuts
alias cdw="cd ~/workspace/"
alias cdg="cd ~/workspace/git_repos/"

#Network Manager On/Off Switch
alias ns="sudo systemctl start NetworkManager"
alias nt="sudo systemctl stop NetworkManager"

#Bluetooth and Bluetooth accessories
alias sb="sudo systemctl start bluetooth"
alias stb="sudo systemctl stop bluetooth"
alias bt="sudo bluetoothctl"

#Teamviewer
alias tv="teamviewer --daemon start && teamviewer"
alias tvs="teamviewer --daemon stop"

# Update system
alias pacup="sudo pacman -Syu"

#Helps display vim colors properly
export TERM=xterm-256color

#HDF5 libraries and friends
PATH=$PATH:/usr/local/hdf5/bin
export PATH
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/hdf5/lib
export LD_LIBRARY_PATH
