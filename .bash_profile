# COLORS =======================================================================
  2 txtblk='\e[0;30m' # Black - Regular
  3 txtred='\e[0;31m' # Red
  4 txtgrn='\e[0;32m' # Green
  5 txtylw='\e[0;33m' # Yellow
  6 txtblu='\e[0;34m' # Blue
  7 txtpur='\e[0;35m' # Purple
  8 txtcyn='\e[0;36m' # Cyan
  9 txtwht='\e[0;37m' # White
 10
 11 bldblk='\e[1;30m' # Black - Bold
 12 bldred='\e[1;31m' # Red
 13 bldgrn='\e[1;32m' # Green
 14 bldylw='\e[1;33m' # Yellow
 15 bldblu='\e[1;34m' # Blue
 16 bldpur='\e[1;35m' # Purple
 17 bldcyn='\e[1;36m' # Cyan
 18 bldwht='\e[1;37m' # White
 19
 20 unkblk='\e[4;30m' # Black - Underline
 21 undred='\e[4;31m' # Red
 22 undgrn='\e[4;32m' # Green
 23 undylw='\e[4;33m' # Yellow
 24 undblu='\e[4;34m' # Blue
 25 undpur='\e[4;35m' # Purple
 26 undcyn='\e[4;36m' # Cyan
 27 undwht='\e[4;37m' # White
 28
 29 bakblk='\e[40m'   # Black - Background
 30 bakred='\e[41m'   # Red
 31 badgrn='\e[42m'   # Green
 32 bakylw='\e[43m'   # Yellow
 33 bakblu='\e[44m'   # Blue
 34 bakpur='\e[45m'   # Purple
 35 bakcyn='\e[46m'   # Cyan
 36 bakwht='\e[47m'   # White
 37
 38 txtrst='\e[0m'    # Text Reset
 39
 40
 41 # COMMAND PROMPT ===============================================================
 42 # Printed above the prompt
 43 print_before_prompt () {
 44     printf "\n$txtylw%s $txtcyn%s\n" "${PWD/$HOME/~}" $(parse_git_branch)
 45 }
 46
 47 #PROMPT_COMMAND=print_before_prompt
 48
 49 # Prompt format: $
 50 #export PS1="\[$txtwht\]→ \[$txtrst\]"
 51
 52 # Include git branch in prompt
 53 parse_git_branch() {
 54     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 55 }
 56
 57 LS_COLORS=$LS_COLORS:'di=0;34:' ; export LS_COLORS
 58
 59 # PATH CONFIG ==================================================================
 60 # export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
 61
 62 # Java
 63 # export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home
 64
 65 # Java Maven
 66 # export MAVEN_HOME=/Users/jasonyoon/Downloads/apache-maven-3.3.3
 67 # PATH=$PATH:$MAVEN_HOME/bin
 68
 69 # Load RVM into a shell session *as a function*
 70 # [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
 71
 72 # Python Anaconda2 4.3.1 installer
 73 # export PATH="/Users/jasonyoon/anaconda/bin:$PATH"
 74
 75
 76 # COMMAND ALIAS ================================================================
 77 alias ls='ls --color -p'
 78 alias ll='ls -al'
 79 alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
 80 alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'
 81
 82
 83 # GIT ==========================================================================
 84 # Autocomplete git branch names
 85 if [ -f ~/.git-completion.bash ]; then
 86   . ~/.git-completion.bash
 87 fi
