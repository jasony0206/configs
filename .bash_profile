# COLORS =======================================================================
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White

bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White

unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White

bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White

txtrst='\e[0m'    # Text Reset


# COMMAND PROMPT ===============================================================
# Printed above the prompt
print_before_prompt () {
    printf "\n$txtylw%s $txtcyn%s\n" "${PWD/$HOME/~}" $(parse_git_branch)
}

PROMPT_COMMAND=""

# Prompt format: $
export PS1="\[$txtblu\]\u\[$txtwht\]@\[$txtgrn\]\h:\[$txtylw\]\w \[$txtwht\]\$ \[$txtrst\]"

# Include git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


# PATH CONFIG ==================================================================
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home

# Java Maven
export MAVEN_HOME=/Users/jasonyoon/Downloads/apache-maven-3.3.3
PATH=$PATH:$MAVEN_HOME/bin

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Python Anaconda2 4.3.1 installer
#export PATH="/Users/jasonyoon/anaconda/bin:$PATH"


# COMMAND ALIAS ================================================================
alias ls='ls -Gp'
alias ll='ls -al'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'


# GIT ==========================================================================
# Autocomplete git branch names
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
