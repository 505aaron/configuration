PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


############################################
## Aliases
############################################
# Common CD commands
alias cdb='cd ~/Documents/Builds'
alias cds='cd ~/Documents/Ground-SIA'
alias cdt='cd ~/Documents/Ground-Trunk'
alias cdj5='cd ~/Documents/Jboss/787'
alias cdj4='cd ~/Documents/Jboss/SIA'

# Make some possibly destructive commands more interactive.
# alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lF'
alias la='ls -alF'
alias ls='ls -F'

# Make grep more user friendly by highlighting matches
# and exclude grepping through .svn folders.
alias grep='grep --color=auto --exclude=\.svn'

# Shortcut for using the Kdiff3 tool for svn diffs.
alias svnkdiff3='svn diff --diff-cmd kdiff3'
alias svndiffm='svn diff --diff-cmd diffmerge-svn-wrapper.sh'

# Unzip
alias unzipd='unzip -d'

############################################
## Functions
############################################
function usidiff() {
   ((val = $1 - 1 ))
   svndiffm  https://svn.ultramain.com/svn/usi/efb@$val https://svn.ultramain.com/svn/usi/efb@$1
}
