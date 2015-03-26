
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000
 
# homebrewを優先
export PATH=~/bin:/usr/local/bin:$HOME/local/lib/ruby:$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

#postgres
export PGDATA=/usr/local/var/postgres
 
# rvm
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init - zsh)"
 
## 補完機能の強化
autoload -U compinit
compinit
 
## コアダンプサイズを制限
limit coredumpsize 102400
 
## 出力の文字列末尾に改行コードが無い場合でも表示
unsetopt promptcr
 
## 色を使う
#setopt prompt_subst
 
## ビープを鳴らさない
setopt nobeep
 
## 内部コマンド jobs の出力をデフォルトで jobs -l にする
setopt long_list_jobs
 
## 補完候補一覧でファイルの種別をマーク表示
setopt list_types
 
## サスペンド中のプロセスと同じコマンド名を実行した場合はリジューム
setopt auto_resume
 
## 補完候補を一覧表示
setopt auto_list
 
## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
 
## cd 時に自動で push
setopt autopushd
 
## 同じディレクトリを pushd しない
setopt pushd_ignore_dups
 
## ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
setopt extended_glob
 
## TAB で順に補完候補を切り替える
setopt auto_menu
 
## zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
 
## =command を command のパス名に展開する
setopt equals
 
## --prefix=/usr などの = 以降も補完
setopt magic_equal_subst
 
## ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
 
# ファイル名の展開で辞書順ではなく数値的にソート
setopt numeric_glob_sort
 
## 出力時8ビットを通す
setopt print_eight_bit
 
## ヒストリを共有
setopt share_history
 
## 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1
 
## 補完候補の色づけ
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
 
## ディレクトリ名だけで cd
setopt auto_cd
 
## カッコの対応などを自動的に補完
setopt auto_param_keys
 
## ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
 
## スペルチェック
setopt correct
 
## Keybind configuration
##
## emacs like keybind (e.x. Ctrl-a goes to head of a line and Ctrl-e goes
##   to end of it)
##
bindkey -e
 
# historical backward/forward search with linehead string binded to ^P/^N
# #
#
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
 
###シェルに色をつける
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
 
## Command history configuration
##
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data 
 
setopt complete_aliases
alias vi='vim'
alias ll='ls -la'
alias news='/Users/ssato/.rvm/rubies/ruby-1.9.3-p392/bin/ruby /Users/ssato/ruby/news.rb'

alias gadd='git add -A'
alias gcim='git commit -m'
alias gpush='git push origin master'
alias gpushh='git push heroku master'
#alias svnversion='/Applications/Xcode\ 2.app/Contents/Developer/usr/bin/svnversion'
#alias svn='/Applications/Xcode\ 2.app/Contents/Developer/usr/bin/svn'
alias clsdmp='/Users/ssato/class-dump'
alias sbopn='open -a /Applications/Sublime\ Text\ 2.app/'
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


export SVN_EDITOR=vim
