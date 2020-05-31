HOST_NAME=JunkMac

#source ~/.nvm/nvm.sh
#nvm use stable
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

USERNAME=("sulthonuladib")

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "$txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$USERNAME > "

# fortune | cowsay -f tux

# load rbenv
#eval "$(rbenv init -)"

# Some shit alias
alias cppcom="g++ -std=c++17 -stdlib=libc++ ./**.cpp -o ../bin/Main.out; cd ../bin/ ./Main.out; cd ../src/"
alias ccom="clang ./**.c -o ../bin/app && ../bin/app"
alias my="mysql -u root -pBedokkok11,."
alias bstart="brew services start"
alias bstop="brew services stop"
alias bser="brew services"
alias gfxutil="~/hackintosh/utils/gfxutil"
alias iasl="~/hackintosh/utils/iasl"

# rmd to see markdown files
# install lynx and pandoc first with homebrew
# then execute rmd <filename>
rmd () {
  pandoc $1 | lynx -stdin
}

# Fix shitty brew
export EDITOR='vim'
export LC_ALL=en_US.UTF-8
export PATH="/usr/local/sbin:$PATH"

# android sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# alias android emulator
alias qentang="/Users/sulthonuladib/Library/Android/sdk/emulator/emulator -avd Qentang"

# GO PATH
export GOPATH=$HOME/programming/go

# Composer global vendor
export PATH=~/.composer/vendor/bin:$PATH

# Postgres Environment Variable
export POSTGRES_USER_LOCAL="sulthonuladib"
export POSTGRES_HOST_LOCAL="localhost"
export POSTGRES_PASSWORD_LOCAL="Bedokkok11,."

