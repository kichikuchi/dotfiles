#env variable
export LANG=ja_JP.UTF-8

#font color
autoload -Uz colors
colors

#history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

#prompt
#1line
#prompt="%~ %# "
#2line
PROMPT="%{${fg[red]}%}[%n@%m]%{${reset_color}%} %~%# "

#word 区切り
autoload -Uz select-word-style
select-word-style default
#以下で指定した文字を単語区切りとみなす
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

#######################################
#complement
#complement on
autoload -Uz compinit
compinit

#complement small letter == large letter
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#../の後は今いるディレクトリを補完しない
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \ /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

#ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

#######################################
# vcs_info

autoload -Uz vcs_info
zstyle ':vcs_info:*'  formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]]
}
RPROMPT="%1(v|%F{green}%1v%f|)"

#######################################
#option
#ja file ok
setopt print_eight_bit

#beep off
setopt no_beep

#flow control off
setopt no_flow_control

# # comentout
setopt interactive_comments

#ディレクトリのみでcd
setopt auto_cd

#cd auto pushd
setopt auto_pushd

#重複したディレクトリを追加しない
setopt pushd_ignore_dups

# = の後はパス名として補完
setopt magic_equal_subst

#同時に起動したzshの間でヒストリを共有
setopt share_history

#同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

#ヒストリファイルに保存する時重複したコマンドが有る場合古い方を削除
setopt hist_save_nodups

#スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

#ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

#補完候補が複数あるときに自動的に一覧表示
setopt auto_menu

######################################
#key bind
#^Rで履歴検索をするときに*でワイルドカードを使用できるようにする

bindkey '^R' history-incremental-pattern-search-backward

######################################
#alias

alias la='ls -a'
alias ll='ls -l'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

#sudoの後のコマンドでエイリアスを有効にする
alias sudo='sudo '

#グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

#Cで標準出力をクリップボードにコピーする
if which pbcopy >/dev/null 2>&1 ; then
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
    alias -g C='| putclip'
fi

#######################################
#os
case ${OSTYPE} in
    darwin*)
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        ;;
esac

# vim:set ft=zsh:
PROMPT="%B%{[31m%}%/#%{[m%}%b "
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
export CC=/usr/bin/gcc
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

fpath=(/usr/local/share/zsh-completions $fpath)
